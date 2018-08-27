---
title: 'GitHub Pages Tweaks'
date: 2018-08-26 02:34:50 Z
categories:
- site
author: "tired matt"
layout: post
---

This is just a quick update - I've changed how the site works (yet again) to play around with Jekyll and learn more about making a reasonably usable website. The biggest change I've made is moving to GitHub Pages instead of hosting the blog on my webserver. Overall, this is a good change - it lightens load on my webserver and is a proof-of-concept for other blogs that I might make for other people.

However, in order to do that I need to change how a lot of the site works - since GitHub Pages only allows a select few Jekyll plugins to run on their servers (which makes total sense), I can no longer use the `jekyll-archives` gem to generate category pages automatically. So, I used Jekyll's collections and layouts to remake the category section by hand. Since I was remaking these things anyways, I also changed how categories function with specials: all specials now are a subcategory of a broader category (i.e. 15at15 is in the Entertainment category), and specials themselves don't show up in the category view. Instead, the links to a special are now a special kind of tag, visually discernible and featuring a different specials page.

Generally, I got rid of some sketchy code so that more and more things are fully automated with Jekyll. I've also updated Liteweight substantially so it's lighter on page load times and more visually consistent. Hopefully, this is another improvement - but with my code, it often times isn't.

I guess we'll find out soon. Until next time!
