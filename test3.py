import json
import os
import requests

API_URL = 'https://api.modrinth.com/v2'
STAGING_API_URL = 'https://staging-api.modrinth.com/v2'

# Minimal mock for GitHub Actions core functions in Python
class Core:
    def getInput(self, name, required=False):
        val = os.getenv(f"INPUT_{name.upper()}", "")
        if required and not val:
            self.setFailed(f"Input required and not supplied: {name}")
        return val

    def setFailed(self, message):
        print(f"::error::{message}")
        exit(1)

    def debug(self, message):
        print(f"::debug::{message}")

    def setOutput(self, name, value):
        print(f"::set-output name={name}::{value}")

core = Core()

def run():
    token = core.getInput('token', required=True)
    file_path = core.getInput('file_path', required=True)
    
    if not os.path.exists(file_path):
        core.setFailed(f"Specified file at {file_path} does not exist!")

    name = core.getInput('name', required=True)
    version = core.getInput('version', required=True)
    changelog = core.getInput('changelog', required=False)
    relations_string = core.getInput('relations', required=False)
    
    relations = []
    if relations_string:
        for project in relations_string.split(','):
            if not project:
                continue
            parts = project.split(':')
            if len(parts) != 2:
                continue
            project_id, dependency_type = parts
            if dependency_type not in ['required', 'optional', 'incompatible', 'embedded']:
                core.setFailed(f'Invalid relation type: {dependency_type} (valid values: "required", "optional", "incompatible", "embedded")')
            relations.append({'project_id': project_id, 'dependency_type': dependency_type})

    game_versions = core.getInput('game_versions', required=True).split(',')
    release_type = core.getInput('release_type', required=False)
    if release_type not in ['', 'alpha', 'beta', 'release']:
        core.setFailed(f'Invalid release type: {release_type} (valid values: "alpha", "beta", "release")')

    mod_loaders = core.getInput('loaders', required=True).split(',')
    featured = core.getInput('featured', required=True).lower() == 'true'
    project_id = core.getInput('project_id', required=True)
    staging = core.getInput('staging', required=False).lower() == 'true'
    new_project_body = core.getInput('new_project_body', required=False)

    data = {
        'name': name,
        'version_number': version,
        'dependencies': relations,
        'game_versions': game_versions,
        'version_type': release_type or 'release',
        'loaders': mod_loaders,
        'featured': featured,
        'project_id': project_id,
        'file_parts': ['file']
    }
    
    if changelog:
        data['changelog'] = changelog

    core.debug('Request body: ' + json.dumps(data))
    base_url = STAGING_API_URL if staging else API_URL
    
    headers = {
        'User-Agent': 'github.com/RubixDev/modrinth-upload',
        'Authorization': token
    }

    try:
        with open(file_path, 'rb') as f:
            files = {
                'data': (None, json.dumps(data), 'application/json'),
                'file': (os.path.basename(file_path), f)
            }
            response = requests.post(f"{base_url}/version", headers=headers, files=files)
            
        core.debug(f'Response code: {response.status_code}')
        if response.status_code == 200:
            core.debug(f'Response body:\n{response.text}')
            core.setOutput('id', str(response.json().get('id')))
        else:
            core.setFailed(f"{response.status_code}: {response.reason}\nResponse body:\n{response.text}\nRequest body:{json.dumps(data)}")
            
    except Exception as err:
        core.setFailed(f"Request error:{err}")

    if new_project_body:
        patch_headers = headers.copy()
        patch_headers['Content-Type'] = 'application/json'
        requests.patch(
            f"{base_url}/project/{project_id}",
            headers=patch_headers,
            json={'body': new_project_body}
        )

if __name__ == '__main__':
    try:
        run()
    except Exception as error:
        core.setFailed(str(error))
        raise
