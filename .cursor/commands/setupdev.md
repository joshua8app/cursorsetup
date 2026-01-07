# Sets up the environment for you to get started developing

Before you code you should
1) Verify you are on a "Ticket" or "Feature" branch, and not main or master
2) If you are, See if you have a "Clean" enviroment ( Nothing staged for commits), If you have items stagged for commits, Review them, and ask the user "I see we have items not yet commited, It looks like it is <What you think they do>, Would you like me to commit these or discard them?" and do what they say
3) After you are in a clean envirment, Merge main into this ( SOmetimes it is "master" not main, but 95% of the time its main )
4) run `npm ci` to make sure everything is ready to go
5) Review our docker compose file, and ensure docker compose is up for this project 
