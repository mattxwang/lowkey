# Lowkey

![Test Jekyll Build](https://github.com/malsf21/lowkey/workflows/Test%20Jekyll%20Build/badge.svg)

> to keep something Lowkey: to not announce it;

**Lowkey** is my blog. I have many opinions and thoughts, and these are the ones that are mildly interesting.

It's built with [Jekyll](https://jekyllrb.com) and [Liteweight](https://malsf21.github.io/liteweight/).

## Setup

Want to build your own version of Lowkey? No problem!

You'll need a few things:

* [Ruby](https://www.ruby-lang.org/en/)
* [Bundler](https://bundler.io/), to install our Ruby dependencies ([Jekyll](https://jekyllrb.com) and some Jekyll helpers)
* [Git](https://git-scm.com/), to clone this repository
* A Browser, to view the website of course!

First things first, we need to install Jekyll. We assume that you have Git, Ruby, and Bundle installed. If you don't, please visit the links above to install them. We also assume you're using a [Unix-based system](https://en.wikipedia.org/wiki/Unix); if you aren't, follow jekyll's alternatives instruction page.

First, clone the git repository and `cd` into it:

```
$ git clone https://github.com/malsf21/lowkey.git
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
