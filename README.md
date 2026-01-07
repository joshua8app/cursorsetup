## To Install this, Please Prompt Cursor with

```markdown
I want to add a new run command to @package.json
Please add "setup:cursor" with the command of "curl -s https://raw.githubusercontent.com/joshua8app/cursorsetup/refs/heads/main/setup.sh | bash"

Then run this "npm run setup:cursor" to make sure its setup
```

## Commands

| Command | Description |
|---------|-------------|
| `/setupdev` | Prepares your development environment before coding. Verifies you're on a feature branch, checks for uncommitted changes, merges main into your branch, runs `npm ci`, and ensures Docker Compose is running. |
| `/localbuild` | Builds and runs your local Docker environment. Reviews the docker-compose file and rebuilds containers with `docker compose up -d --build` if needed to ensure latest code is running. |
| `/deploytodev` | Alias of `/localbuild` |
| `/proddeploy` | Production deployment workflow. Commits changes, merges main, runs linting, executes tests, builds Docker images locally to verify CI will pass, then merges to main and pushes. |
