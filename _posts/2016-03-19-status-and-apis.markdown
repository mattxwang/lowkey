---
layout: post
title:  "Status And Learning About APIs"
date:   2016-03-19 20:39:43 -0400
categories: dev status
---

One of my latest pet projects has been [status](http://matthewwang.me/status), a little web-app that tells you what I'm doing, whether it be playing League, Streaming, tweeting, Instagramming, or coding. I'm planning to add Steam API functionality, as well as Spotify API/Last.fm API functionality, though I think it's going to be a struggle. Eventually, I'm planning to get everything to work with different users, allowing each user to make their own status!

Seems pretty cool, but Lowkey (heh) it's been a tough time. Parsing tons of JSON data is annoying, and I have to use PHP to avoid issues with [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS). I have a bunch of commits of me just bug-testing random things, since I don't have a PHP server on either of my machines. In addition, I often have to deal with rate limits; [Riot's API](http://developer.riotgames.com/) has a very strict rate limit of 10 calls per 10 seconds, so I spent a lot of time (which to be honest, somebody better than me at coding probably could've done in an instant) caching responses and loading them again if the 10 seconds hadn't elapsed. Unfortunately, this leads to a bunch of functionality issues, namely if more than 10 people visit 10 different "status" pages! I've yet found a way to wrap my head around this problem.

Even worse, I was very eager to get the [Spotify Web API](https://developer.spotify.com/web-api/) to work, but I ran into huge troubles. My goal was to make a little widget that'd tell you my last listened to song, but alas Spotify's Web API [doesn't support that feature just yet](https://github.com/spotify/web-api/issues/12). The only bypass is to go through [Last.fm's API](http://www.last.fm/api) and hope it works properly. Not a fun time, as you may imagine. I've put off that part of the status project and have been more focused on other things, like Instagram, Steam, and League.

All complaining aside, it's been an overall positive experience. While it's been an absolute struggle figuring everything out, I've learnt a lot about how Ajax and GET requests work, which is always nice going into some server work later on (hint hint node). Furthermore, I've learnt a lot about how to parse data efficiently, and how to use it effectively, which is something I normally don't get the chance to do for a real, nice, but fun reason.

If you want to check on my progress, you can check out [the status repository on GitHub](http://github.com/malsf21/status), and have fun seeing me squirm and jump over hoops to get everything working again. That being said, if it wasn't challenging, it wouldn't be fun.

I'm just bummed out there isn't a Starbucks API :(
