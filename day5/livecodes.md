
# Structure du site et mise en production

## GIT, GITHUB & HEROKU

### GIT

### GITHUB
Terminal:
```bash
hub create                # Create an empty repository on github online with the same name
git add .                 # Add all modified files to save
git commit -m "message"   # Give a message
git push origin master    # push your work to github
```

### HEROKU
Terminal:
```bash
heroku create the-name-project # Create project on heroku (you can change the name project like "akinator-joz84")
git push heroku master      # push your work to heroku
heroku run rails db:migrate # if you are modifie the db, change the db on heroku
```

Terminal:
```bash
heroku open # Open your project online in the browser
```


### Pour chaque déploiement
Terminal:
```bash
git add .                   # Add all modified files to save
git commit -m "message"     # Give a message
git push origin master      # push your work to github
git push heroku master      # push your work to heroku
heroku run rails db:migrate # if you are modifie the db, change the db on heroku
```


