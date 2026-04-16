# re-mote
Configure Git to push to multiple remotes.

## Usage
```bash
curl https://raw.githubusercontent.com/q4niel/re-mote/main/re-mote.sh -o re-mote.sh && sh re-mote.sh && rm -f re-mote.sh
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