from pydub import AudioSegment
import subprocess

def convert(mp3_path, ogg_path):
    # Load the MP3 file
    audio = AudioSegment.from_mp3(mp3_path)
    
    # Export as OGG
    audio.export(ogg_path, format="ogg")
    print(f"Successfully converted {mp3_path} to {ogg_path}")

# Usage
for x in subprocess.getoutput("dir *.mp3 /b").split('\n'):
    convert(x, x.replace(".mp3", ".ogg"))