# Alias of /localbuild

Review our docker compose file, and make sure our code changes are in it, If the dev enviroment runs `npm run start` make sure we do somethign like `docker compose up -d --build` if its running `npm run dev` then just make sure its all good (that it doesnt need to be restarted or something)

In general our docker file must be running, and with the latest code