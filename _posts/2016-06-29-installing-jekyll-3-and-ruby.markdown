---
title: Installing Jekyll 3 and Ruby 2+ On A Webserver
date: 2016-06-29 17:30:43 Z
categories:
- dev
layout: post
---

As you may or may not know, I've been working on the [OMUN](http://omun.ca) and [WAC](http://world.ac) websites over the summer, both of which are rendered with [Jekyll](https://jekyllrb.com/). I've had to set up new webservers (or new configurations) of this stuff to get it to work with our official, stable releases, and it's a huge headache to install. Let me walk you through it on `Ubuntu 14.04`:

(Some of this is borrowed from [here](https://computernerddiaries.wordpress.com/2016/02/17/how-to-install-ruby-2-and-jekyll-3/) and [here](http://rvm.io/rvm/install))

First things first, we got to check if our dependencies are available and get their latest APT versions.

```
sudo apt-get update
```

Then, let's install some dependencies!

```
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
```

```
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
```

Now, we get `rvm`, which is the Ruby Version Manager. It's super useful when you have to manage multiple ruby-dependent programs!

```
\curl -sSL https://get.rvm.io | sudo bash -s stable
```

*Note* In this situation, you might get an issue dealing with a GPG public key. If that's the case, run this:

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
```

*You can find the latest key on [this page](http://rvm.io/rvm/install).*

Then, you install and configure ruby!

```
rvm install 2.1.2

rvm use 2.1.2 –default
```

Obviously, swap out `2.1.2` with your desired ruby version, but `2.1.2` is optimal with `Jekyll 3`.

Finally, install Jekyll!

```
gem install jekyll
```

And that's it! You should have Jekyll 3 and Ruby 2+ on your machine, ready for you to make some awesome websites.

Have fun!
