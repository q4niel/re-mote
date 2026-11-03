# re-mote
A simple script to automate updating git remotes.

## Usage
- Linux
```bash
curl https://raw.githubusercontent.com/q4niel/re-mote/main/re-mote.sh -o re-mote.sh && sh re-mote.sh && rm -f re-mote.sh
```
- Windows (tested once inside *git bash*)
```bash
curl https://raw.githubusercontent.com/q4niel/re-mote/main/re-mote.ps1 -o re-mote.ps1 && powershell.exe -ExecutionPolicy Bypass -File ".\re-mote.ps1" && rm -f re-mote.ps1
```

## Configuration
Create a `.re-mote` file in your repository:

```
origin
https://github.com/username/repo.git
https://gitlab.com/username/repo.git
```

- Line 1: Remote name
- Line 2: Fetch repository URL
- Lines 2+: Push repository URLs