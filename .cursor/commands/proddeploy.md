#proddeploy
Please commit all changes
Then merge main into this branch, and resolve any merge conflicts, If you do end up having to merge items in, Please run
`docker compose up -d --build` and STOP this process, and tell me "I had to merge changes, Please review them before going, Look at <tell me the areas that are likely changed> in particular"
 
If no changes are in the main branch
 
`npm run lint` and fix all errors and warnings ( Make sure to commit make any changes )
 
 Review our @.github/workflows 
 And if we have any Tests that they run, that we can run, we should run them, and if they build something ( like docker build -t <Dockerfile> .) We should build it locally, so we can be 100% sure that the github deployment will be successful
 
then push this branch
 
Then checkout main and merge this branch into main, and push