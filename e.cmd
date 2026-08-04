curl -X POST https://staging-api.modrinth.com/v2/version \
  -H "Authorization: mrp_gH7E7A8f4QCLnKzYXFpSQ4CG6Tuwcp76b4YU4loFU4jD5vjCw1mNh5g5lwen" \
  -F 'data={
    "name": "Version 1.0.0",
    "version_number": "1.0.0",
    "game_versions": ["1.20.1"],
    "loaders": ["forge"],
    "featured": false,
    "dependencies": [],
    "project_id": "YRiXU1xW",
    "file_parts": ["mod_file"],
    "version_type": "release"
  }' \
  -F "mod_file=gstools-forge-1.20.1.jar;filename=gstools-forge-1.20.1.jar"