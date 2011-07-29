an example project of how to run rails/resque/clockwork for free on heroku.

read the article:
http://blog.nofail.de/2011/07/heroku-cedar-background-jobs-for-free/

see the app:
http://freemium-web.heroku.com

resque-web is mounted here:
http://freemium-web.heroku.com/resque/overview

setup:

```
heroku apps:create freemium-web --stack cedar --remote heroku
git push heroku master

heroku apps:create freemium-worker --stack cedar --remote worker
git push worker master

heroku apps:create freemium-clock --stack cedar --remote clock
git push clock master

heroku scale web=1 --app=freemium-web
heroku scale web=0 worker=1 --app=freemium-worker
heroku scale web=0 clock=1 --app=freemium-clock

heroku addons:add redistogo:nano --app=freemium-web

heroku config:add `heroku config -s --app=freemium-web|grep redis` --app=freemium-worker
heroku config:add `heroku config -s --app=freemium-web|grep redis` --app=freemium-clock
```
