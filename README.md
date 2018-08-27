# [![Lowkey Logo](img/lowkey-transparent.png)](http://blog.matthewwang.me)
[![Build Status](https://travis-ci.org/malsf21/lowkey.svg?branch=master)](https://travis-ci.org/malsf21/lowkey)
> to keep something Lowkey: to not announce it;

**Lowkey** is my blog: nothing too special, nothing I need to announce, just a place where I talk about cool things, cool events, and cool people. Along the way, you'll see some wacky stuff (like a post analyzing Starbucks Rewards), developer insights on how I made this blog (using Jekyll, obviously!), and a few nice tidbits about my life.

Lowkey was built on [Jekyll](https://jekyllrb.com) and [Liteweight](https://malsf21.github.io/liteweight/).

*Note: you might ask why categories and specials are self-coded instead of using gems. That's because Lowkey is hosted in GitHub Pages, which only allows certain whitelist plugins (jekyll-archives not being one of them). Therefore, I need to implement those functionalities by hand).*

## Setup

Want to build your own version of Lowkey? No problem!

You'll need a few things:

* [Ruby](https://www.ruby-lang.org/en/)
* [Bundler](https://bundler.io/), to install our Ruby dependencies ([Jekyll](https://jekyllrb.com) and some Jekyll helpers)
* [Git](https://git-scm.com/), to clone this repository
* A Browser, to view the website of course!

First things first, we need to install Jekyll. We assume that you have Git, Ruby, and Bundle installed. If you don't, please visit the links above to install them. We also assume you're using a [Unix-based system](https://en.wikipedia.org/wiki/Unix); if you aren't, follow jekyll's alternatives instruction page.

First, clone the git repository:
```
$ git clone https://github.com/malsf21/lowkey.git
```

Then, cd into the repository:
```
$ cd lowkey
```

Now, we're going to install all of our dependencies! Type in your command line:
```
$ bundle
```

We're almost done: now, we're just going to serve the site. Type the following into your command line:
```
$ bundle exec jekyll serve
```

After that, you should get a response that looks something like this:

```
$ bundle exec jekyll serve
Configuration file: /Users/matthew.wang/github/lowkey/_config.yml
            Source: /Users/matthew.wang/github/lowkey
       Destination: /Users/matthew.wang/github/lowkey/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
                    done in 0.287 seconds.
 Auto-regeneration: enabled for '/Users/matthew.wang/github/lowkey'
Configuration file: /Users/matthew.wang/github/lowkey/_config.yml
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
```

Visit what follows the "Server address:" line (which is normally [http://127.0.0.1:4000/](http://127.0.0.1:4000/)).

And voila! Everything should work for you! Congrats, you lowkey did it!

Note: you can use `rake` to build and test the output of `bundle exec jekyll build`.
