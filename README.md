# Prelauncher

A nice and easily deployable prelaunch signup page for your startup.

# Getting started
- Download this repository as a ZIP-File
- Rename the folder. The app will be available at `http://folder_name.dev`.
- Install [Pow] if you haven't already.
- Install [Powder] if you haven't already.
- Link the app.
```shell
$ powder link
```
- Browse to `http://folder_name.dev` and see if everything is working.

# Git
- Initialize Git repo (skip if you cloned the repo instead of downloading it)
```shell
$ git init
$ git add .
$ git commit -am "First commit"
```
- Optional: Push your app to Github in a private or public repo. You'll find instructions after creating a repo on Github.

# Hosting
Prelauncher is ready-made for a quick and easy [Heroku] deployment. These are the steps:
- Install the Heroku gem or [Toolbelt] if you haven't already.
- Create your app on Heroku.
```ruby
$ heroku create prelauncher --remote production
```
- Add a SECRET_TOKEN config variable
```shell
$ rails console
SecureRandom.hex(48)
# => 123123.........123123; Copy this string and exit the rails console

$ heroku config:add SECRET_TOKEN=123123.......123123
```

- Add the nescessary addons. The free plan suffices for each.
  - [MongoHQ](https://addons.heroku.com/mongohq)
  - [Sendgrid](https://addons.heroku.com/sendgrid)
  - [Memcachier](https://addons.heroku.com/memcachier)
  - [New Relic](https://addons.heroku.com/newrelic)
- Deploy.
```shell
$ git push production master
```
- Optional: Tail the logs in a second terminal window.
```shell
$ heroku logs -t
```
- Browse your Heroku app to see if everything is working.

# Customizing

```shell

```


```ruby

```