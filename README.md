# RPF apprentice software engineer challenge

This is a little application, written in [Ruby](https://ruby-lang.org), using the [Sinatra](https://sinatrarb.com/) framework.  It allows users to see the whereabouts of the International Space Station, using the [OpenNotify APIs](http://api.open-notify.org/).

## What we're expecting

* You should spend 2-3 hours on this challenge, and attempt all three tasks.
* Please send back your code by the end of Sunday 4th June, either as a link to a Github/Gitlab repo, or a zip/tar of your code.

We understand that you will have other commitments and time constraints, please let us know as soon as possible if you will be unable to complete this task by 4th June, so we are able to make allowances.

It is important to attempt the tasks, even if you don't finish them.

If you need help with the task, for whatever reason, please drop us an email and we will do our best to assist.

## Tasks

1. Build a page to show the current astronauts that are in space, using the `OpenNotify#astros` method.
2. Style the application using HTML and CSS to allow the information to be presented clearly.
3. Add new endpoints, or modify the existing ones, to return the ISS position data as JSON, instead of an HTML page.
   e.g. `http://localhost:4567/iss_position.json` should return JSON in the following format:

```json
{"iss_position": {"longitude": "-3.4941", "latitude": "-37.5113"}, "timestamp": 1684502291, "message": "success"}
```

## Getting started

Firstly you'll want to download and unzip the code into a directory or folder of your choice.

Next if you've not already got Ruby, you'll need to [install it](https://www.ruby-lang.org/en/documentation/installation/).  There are a number of different ways to do it depending on your operating system.  **NB** Apple Macs already have it installed, but the version is quite old, so we'd recommend installing a more up-to-date one.

Once you've installed ruby, you can install the dependencies for this project in a terminal.  You should open a terminal in the directory or folder where your code has been checked out.

```shell
bundle config path vendor/bundle
bundle install
```

Then to start it:

```shell
bundle exec ruby app.rb
```

and you should be able to see it at http://localhost:4567.  **NB** When you make changes to your code, you'll need to stop the app, using `ctrl+c` and then restart it using the same command above.

## Layout

* `app.rb` - Our Sinatra application
* `open_notify.rb` - OpenNotify library
* `Gemfile` - list of Ruby libraries (gems) that our app depends on.
* `Gemfile.lock` - automatically generated "lockfile" for our dependencies.
* `public/` - directory where "static" assets, e.g. images, CSS files can be kept.
* `data/` - directory with static data from OpenNotify to allow development without internet access.
* `views/` - directory containg the views (templates) for use by Sinatra.  These are all using `erb`.

## Useful documentation

* [Getting started with Sinatra](https://sinatrarb.com/intro.html)
* Various useful Ruby classes and modules:
  * [Array](https://ruby-doc.org/3.2.2/Array.html)
  * [Hash](https://ruby-doc.org/3.2.2/Hash.html)
  * [String](https://ruby-doc.org/3.2.2/String.html)
  * [Comparable](https://ruby-doc.org/3.2.2/Comparable.html) (handy if you're sorting things)
  * [Enumerable](https://ruby-doc.org/3.2.2/Enumerable.html) (full of useful methods that both Hash and Array can use)
* [ERB Templating](https://ruby-doc.org/3.2.2/stdlibs/erb/ERB.html)

