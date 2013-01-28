# Prelauncher

A nice and easily deployable prelaunch signup page for your startup.

## Getting started
- Download this repository as a ZIP-File
- Rename the folder. The app will be available at `http://folder_name.dev`.
- Install and update the gems.
    ```shell
    $ bundle install
    $ bundle update
    ```

- Install [Pow](http://www.plugingeek.com/repos/37signals/pow) if you haven't already.
- Install [Powder](http://www.plugingeek.com/repos/rodreegez/powder) if you haven't already and link the app.
    ```shell
    $ gem install powder
    $ powder link
    ```

- Browse to `http://folder_name.dev` and see if everything is working.

## Customizing

You'll be able to customize pretty much everything in this app, however it comes with great defaults.

### Things you must customize
- Mailer
  - **default from address**
  - **default to address**

### Things you should customize
- All views and stylesheets

### Things you can customize
- Everything, including
  - The Subscriber model (i.e. you could add some fields)
  - The outbound mail templates
  - ...

## Git
- Initialize Git repo (skip if you cloned the repo instead of downloading it)
    ```shell
    $ git init
    $ git add .
    $ git commit -am "First commit"
    ```

- Optional: Push your app to Github in a private or public repo. You'll find instructions after creating a repo on Github.

## Hosting
Prelauncher is ready-made for a quick and easy [Heroku] deployment. These are the steps:
- Install the Heroku gem or Heroku toolbelt if you haven't already.
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
- Add New Relic availability monitoring to prevent dyno idling. Go to New Relic from your Heroku apps page and set it in Settings > Availibility Monitoring. Every 10 minutes is plenty.

## Contributing
Just send a PR or open an issue. You'll find me here, at [@thomasjklemm](https://twitter.com/thomasjklemm) and by mail at github_at_tklemm_dot_eu.

Thomas Klemm

## Licence
MIT
