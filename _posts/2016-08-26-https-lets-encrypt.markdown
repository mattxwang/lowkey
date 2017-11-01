---
title: Woah, HTTPS | Let's Encrypt
date: 2016-08-26 14:49:42 Z
categories:
- site
layout: post
---

**Security** is pretty cool, and so is a shiny green lock! Today, I used the [Certbot](https://certbot.eff.org/) tool, in partnership with [Let's Encrypt](https://letsencrypt.org/), to enable HTTPS on matthewwang.me and all subdomains (including this site)! Woohoo!

It doesn't seem to be much, but HTTPS (and SSL!) is moving to becoming the new standard. [HTTPS](https://www.eff.org/encrypt-the-web) is pretty damn useful and can help against some of the big bad things out there on the internet. Plus, you get a shiny green lock and text beside your domain! It's extremely easy to set up, with the help of [Certbot](https://certbot.eff.org/) (it took me **2 minutes**), but means a lot in the long run. You can even set it to auto-renew if you need to!

The one small tidbit that you'll need to know is that all external links must *also* use HTTPS, especially those font and CDN requests, so make sure to HTTPS those once you get your certificate. Since, you know, you're getting it, right?

Lock down on your site's security. And get a nice little green companion with you (I really, really, like this lock).

Until next time!
