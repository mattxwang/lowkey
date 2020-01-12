---
title: 'IDEA Hacks 2019 Post Mortem'
date: 2019-02-10 02:34:50 Z
categories:
- dev
author: 'Matthew "a bit too busy" Wang'
layout: post
---

*I did actually start writing this on 10/02/2019, but... y'a know. Deadlines.*

Wow, I didn't expect my first post of the year to be in February. I definitely didn't expect my first post to be 3 weeks behind of when I *should've* published it. But here we are.

This is a **post-mortem** (or, y'a know, a reflection) on IDEA Hacks 2019. I'll do a few things for you: I'll briefly define a few things, I'll give you a play-by-play of what happened, and I'll talk about what I learned. Since this is a long post with lots of descriptive text, **I'll leave a TL;DR at the bottom too**.

# Context

## What is a hackathon?

If you're unfamiliar with the term, a hackathon is an event where people work together to create *something* over a few days, usually involving computers and electronics. What the *something* is, is totally up to the team creating it: other than a suggested theme (e.g. education, the environment, video games), there's no restriction on what you can make. This unrestricted freedom is what's amazing about hackathons: very rarely do students have the chance to be surrounded by so many other coders, free to make whatever they want with whatever they have.

There are also two key logistical points I'll quickly make note of.

Firstly, hackathons tend to span the entirety of several days (e.g. Friday 8 PM to Sunday 8 AM). This can be super fun and productive, but it's also very exhausting and tiring. I've seen people stay up for 24-36 hours at a time, just to finish their project. Definitely not healthy.

Secondly, hackathons aren't (normally) 36 hours of straight coding. They usually offer workshops, sponsor demos, entertainment and destressers, food, and a place to sleep. In essence, they provide you everything you need so you won't have to leave.

## What is IDEA Hacks?

[![IDEA Hacks 2019 Landing Page]({{site.baseurl}}/img/ideahacks/ideahacks-landing.png)](http://ideahacks.la)

According to [their website](http://ideahacks.la), IDEA Hacks is California's largest hardware-focused hackathon. It's held annually at UCLA by IEEE and Theta Tau (an engineering fraternity at UCLA), in the Ackerman Ballroom (a large room in the middle of campus). It's a solidly small to mid-sized hackathon (compared to large ones like PennApps or Hack The North), which gives it a nice, cozy feel.

Hardware-focused hackathons require you to have some hardware component in your hack. Typically, this means that your hack will include a microcontroller of some sort (ours used an Arduino). Some other hackathons are dominated by AI, data analysis, and Machine Learning projects, so this is definitely a breath of fresh air. Plus, there's something cool about building something physically with your hands.

IDEA Hacks also had a theme for this year, which I'll shamelessly take from their website:

> The theme for this year's hackathon is Travel Upgrade! This means that you will be challenged to create something that relates to upgrading the challenges found in commuting, travelling, and more.

IDEA Hacks ran from Friday, January 18th 2019 to Sunday, January 20th 2019. I'll mostly be referencing dates within this time frame.

## The Squad

Before I explain my journey in IDEA Hacks, it'd make sense to explain to you what I did, and who I did it with.

Our team consisted of five people, who are all my close friends:

* Allison (1st yr. Mechanical Engineering)
* Ashvin (1st yr. Materials Engineering)
* Jeff (1st yr. Mechanical Engineering)
* Juan (1st yr. Mechanical Engineering)
* Matt (me) (1st yr. Computer Science & Engineering)

![pop 'n lock]({{site.baseurl}}/img/ideahacks/popnlock.png)
Our project (which we named pop 'n lock at the last minute) was an RFID smart lock. Essentially, it's a lock that you can only unlock with a device that emits a certain radio signal, like a student card, a key fob, or a phone. Here's a brief video that shows it in action.
<div markdown="0">
	<div class="twitter-embed-container">
		<blockquote class="twitter-tweet"><p lang="en" dir="ltr">life’s good <a href="https://twitter.com/hashtag/ideahacks?src=hash&amp;ref_src=twsrc%5Etfw">#ideahacks</a> <a href="https://t.co/5aWZD14Ejj">pic.twitter.com/5aWZD14Ejj</a></p>&mdash; Matthew Wang (@malsf21) <a href="https://twitter.com/malsf21/status/1086905494990540800?ref_src=twsrc%5Etfw">January 20, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
	</div>
</div>

In the rest of this post, I'll talk about the process that our team went through to make this project a reality, mention a few things that I learned, and detail an experience that I had lots of fun doing. Let's get started!

# The Play-By-Play

## The Prelude

I first saw IDEA Hacks on Facebook - I had been out of the hackathon game for quite a bit of time (the last one I did was [PennApps 2017, and it wasn't exactly my favourite experience]({{site.baseurl}}/dev/2017/01/23/penapps-2017-post-mortem.html)). Long story short, I took bad care of myself, wasted a lot of time, and didn't feel like I learned too much - which overall created a lukewarm experience for me.

As such, I wasn't too keen on doing another hackathon - but I also wasn't against it. After all, university is the time to try new things (or retry things with different mindsets). As long as I committed myself to sleeping and eating reasonably, pushing myself enough out of my comfort zone, and not taking the hackathon too seriously, I knew I'd be fine.

IDEA Hacks was definitely an easy sell in that regard: it sported a more laid-back, cozy atmosphere, one that wasn't too competitive and wouldn't push me to overwork myself. Not having to travel and being able to go back to my dorm to sleep was just another plus.

So, when my friends did approach me about joining their team, I was all ears. I didn't think the hackathon would go poorly - but if it did, I wouldn't pick any other people at UCLA to go through it with me. And so, we had our team.

## Ideation

We registered for the hackathon before the winter break. During the break, we just informally tossed a few ideas around and discussed their feasibility. Most of our ideas came from the theme ("Travel Upgrade") or personal life experiences. Here are a few of the ideas that we had (but ultimately didn't execute on):

* bluetooth smart lock
* smart luggage tag
* anti-theft zipper
* device that will fill remaining space in your suitcase
* clip-on programmable bike button (e.g. press button to turn on Siri/Google Assistant s)
* programmable touch-based biking gloves (e.g. touching your thumb and index would skip the current song)
* bike proximity alarm
* automatic ukelele tuner
* IoT water bottle
* IoT spike ball
* IoT power bar
* IoT toaster

As you can tell, we kind of ran out of steam by the end. We hadn't decided on a project to do, though we were leaning towards a smart lock or the anti-theft zipper, both of which needed similar project requirements.

The largest barrier that most of our ideas faced was transmitting data over medium-to-long ranges - how would a bike proximity alarm or a smart luggage tag work if your phone was 40m away?

We didn't have an answer to this question going in to the hackathon, but that was alright - we were there to learn, and think of solutions on the spot.

Luckily, we did.

## The First Few Hours

After getting settled into the ballroom and listening to the opening remarks, the hackathon started at 9 PM with one of the most chaotic events of any hardware hackathon: parts checkout. IDEA Hacks was generous enough to have a wide array of equipment we could use, but obviously they had limited parts. As a result, we got our parts in waves, with a limited selection in our first round.

For us, that was alright - our hack was relatively light - but it did force us to think about what we wanted to get, which was an important exercise. We immediately knew that we had to get an Arduino; we opted for the 101, since it had a built-in Bluetooth chip and made prototyping easier. We also picked up a servo, since we'd need to open the lock somehow. And on a whim, I picked up an RFID reader - while we thought Bluetooth would be fine, RFID/NFC capability would be a cool gimmick, right?

As soon as we got the parts, our team started hacking. The other four members of our team (Allison, Ash, Jeff, and Juan) started CADing up the lock, which was a lot more complicated than I thought CADing was. They rigorously measured everything, spent quite a bit of time coming up with different lock interiors and mechanisms, and pored over every fine detail to make sure that the pieces would fit. After seeing them work, I definitely gained a newfound respect for the arcane art of computer aided design.

While my compatriots worked away on Solidworks, I got familiar with our Arduino and started coding in basic functionality. It was at this point that I realised how powerful the RFID reader was: not only could it read through a good amount of surface material (i.e. our lock!), but it also worked on a wide variety of items: not only the provided card and fob, but also our student cards, our debit cards, and even Apple Pay phones! At this point, we went all-in on RFID technology - and our CAD legends designed around the chip.

In a slightly annoying manner, the library for the RFID reader wasn't correctly written, to the extent that it didn't even compile on our board. So, I had to painstakingly go through the entire library, fixing what were mostly tiny errors (e.g. changing most number types to unsigned_short, not having uninitialized variables, and other compiler complaints). However, life was pretty easy after that - programming on Arduinos is not particularly tricky, and there aren't many "gotchas" that go outside of normal C programming constructs.

Within the first hour or so, I had a working prototype that would rotate the servo when an RFID tag with a specific ID was pressed against the reader. That's something that I've always loved about hackathons: often, you can get rugged working prototypes out quickly, which can be very satisfying.

We worked well into the night (~ 3 AM): my teammates decided on a solid final design and sent parts of it to print, while I made the prototype a bit closer to the real product. I got a substantial amount of work done: the prototype had enough functionality to test out the entire lock design, which meant reading valid tag combos from internal memory, having an internal lock and unlock state, and a bit of minor documentation. In those first few hours, I took almost no breaks and coded until I couldn't code without getting a headache.

At that point, I knew I needed to take a sleep break, and to take better care of myself; so, I called it a night.

And boy, did I sleep.

## Day 2: Prototype -> Product

Since I wouldn't be technically "needed" to do any more work on the project for a while, I woke up at around noon - which left me comparatively well-rested. After getting a surprisingly healthy lunch from the hackathon organizers, I set on creating quality of life improvements: developing a mechanism to register new RFID cards, adding responsive LED feedback, creating utilities to help me load IDs on to the board, and [documenting all of my work on GitHub!](https://github.com/malsf21/ideahacks-2019)

During this, the rest of our team was working on more CAD - while they had printed the outer shell and some of the components of the lock, they were still busy coming up with other improvable iterations, including different lock mechanisms and housing.

The lock mechanism was an interesting design problem: since our lock was only operated from the inside (i.e. there's no "key"), they were able to design a lock mechanism that couldn't be fiddled with from the outside: instead, the lock would only unlock and lock if a shaft was turned a certain orientation, which was only controllable from our motor (and not from the outside). Essentially, we had created an unpickable lock!

This is definitely better explained [by this video](https://docs.google.com/presentation/d/1d5BIQ5dW1tAUO1HwoitRVkcqre-7os89AI75l5lS5rY/edit#slide=id.g4dadce5abf_2_15).

In addition, the housing was a less interesting but equally important problem: we needed to shove all of these electronics into a small space without causing any heating problems, but not make a lock that's too bulky for practical use. We eventually figured out some sandwichable configuration, which involved a lot of measuring of components. More measuring than I ever thought was necessary.

By the evening, most of our components had been printed. All of our components fit, but with jumper cables and when plugged into the computer - so we had to do some soldering. Jeff ended up doing all of it (I accompanied him and gave him moral support), and late into the night we had a fully operational lock to test. So, we tested it.

<div markdown="0">
	<div class="twitter-embed-container">
		<blockquote class="twitter-tweet"><p lang="en" dir="ltr">life’s good <a href="https://twitter.com/hashtag/ideahacks?src=hash&amp;ref_src=twsrc%5Etfw">#ideahacks</a> <a href="https://t.co/5aWZD14Ejj">pic.twitter.com/5aWZD14Ejj</a></p>&mdash; Matthew Wang (@malsf21) <a href="https://twitter.com/malsf21/status/1086905494990540800?ref_src=twsrc%5Etfw">January 20, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
	</div>
</div>

Here's an opened version of our lock.

<div markdown="0">
	<div class="twitter-embed-container">
		<blockquote class="twitter-tweet" data-conversation="none"><p lang="und" dir="ltr"><a href="https://t.co/Q0lHsBHGeJ">pic.twitter.com/Q0lHsBHGeJ</a></p>&mdash; Matthew Wang (@malsf21) <a href="https://twitter.com/malsf21/status/1086906357003894784?ref_src=twsrc%5Etfw">January 20, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
	</div>
</div>

By 12:37 AM (according to Twitter), we had a fully operational smart lock. Naturally, we celebrated for a bit - our blood, sweat, and tears were put into this prototype - and we went to sleep, at an almost normal hour - something I definitely didn't expect out of a hackathon.

## Day 3: Presenting

We got up bright and early (~ 7:00 AM) to wrap up some final details with our project and to get ready to present. I added a development flag that toggled a lot of my development code - when we'd present, I'd turn it off, which was better for performance and created a more responsive product. My teammates had created a slightly better lock shaft, which fit our servo a bit better. And, we created a slide deck - which you can see [here](https://docs.google.com/presentation/d/1d5BIQ5dW1tAUO1HwoitRVkcqre-7os89AI75l5lS5rY/edit?usp=sharing).

We were a bit nervous presenting in our first round (and Jeff had woken up about 20 minutes before we were supposed to present), but I was happy with our project - even if we didn't make it to finals (which I thought we wouldn't), we had tried hard, learned a lot, and had a great team-bonding experience. On those metrics alone, I was already satisfied with our project.

I should take a quick interlude here to explain how judging works at hackathons. Of course, the primary purpose of hackathons is to be educational and fun; however, hackathons often have prizes: a generic best project, and also themed prizes, like best environmental prize, or a sponsored prize, like the best usage of the clarifai API. At more competitive hackathons (i.e. PennApps, Hack the North), competition is ruthless; however, IdeaHacks being small and local helped make it more chill.

Anyways, we did make it to the finals - I guess I was kind of being a downer - and so we presented again. In comparison to the other ideas, I felt like ours was too simple: we were up against some super cool ideas, including a smart night masks, several anti-theft devices, a car roof mounted camera, a smart bike with collision detection, and a bunch of other cool ideas! I thought that our smart lock paled in comparison, and I was confident that we wouldn't win.

But, as it played out, we did: not only did we win a prize, but we won **best project**! I was esctatic, but also very surprised: even though I try to be humble every now and then, I genuinely didn't really understand why we won.

I did, however, get some clarity after talking to some people - something I'll talk about in the reflections.

We won a Microduino kit, which is essentially Arduino parts modularised into lego-like blocks - a cool prize, but one I haven't used since we've gotten it. And, as we closed up shop, turned in our parts, and trudged back up to your dorms, I felt like I had a pretty solid time.

# Reflections

This blog is all about me blabbing about what I've learned, and this post will be no exception! I want to delve into two different ideas: healthy hacking, and effective hacking.

## On Healthy Hacking

As I talked about previously, I generally lived a pretty unhealthy lifestyle in high school, and hackathons were the epitome of that unhealthy lifestyle. I'm sure this sounds obvious, but that lifestyle affects how you work, and the quality of that work.

At PennApps (and to a lesser extent, HackWestern), I'd struggle after a few hours in of coding while subsisting off of Soylent and unhealthy-ish food. Several more hours of just sitting in a chair, and I'd be surprised if I wrote code that I'd understand.

At IDEA Hacks, I made it my goal to not do that - and the organisation of hackathon definitely made it easier. every 2 hours, they'd remind us to take breaks; they had healthy food and drink options, and no Soylent; and, being close by to campus, I got enough sleep in my own bed.

We as a team also made an effort to hack healthily - we'd check in on each other, get each other food, and even take Spikeball breaks. Plus, we all enjoyed each other's company - that's something that always matters in any workplace environment.

As a result, our entire team worked pretty healthily - and therefore efficiently. We weren't burnt out (save maybe the tail hours of the night), and as a result we made less mistakes and produced higher quality products. I didn't write any "sketchy code" (I'm actually generally quite proud of my code quality), and I was able to put a serious amount of time into bug testing without going crazy. Similarly, when the rest of our team was CADing away, they made few mistakes and quickly caught the mistakes that they did make.

Moving forward, it's just important stay healthy and treat yourself properly - even if you're in a high-stress, quick deadline situation like a hackathon. Keeping yourself in top working condition ensures that you output your best work.

## On Effective Hacking

This'll be a more speculative diatribe on why I think we won.

After we won, we asked a few of the judges exactly what they liked about our project. Their general consensus was that we had a semi-novel idea (smart locks are an already existing product), but our execution was well done.

I don't think I can elabourate too much on that, especially since the feedback was brief, but I think that's an important motto to keep in mind. Even in hackathons, where the polish on a product isn't held to a high esteem, **execution matters**. I think the ideas of all of our competitors were at least equally as novel and interesting, but I think we did the best job of moving from an idea to a workable demo - something our judges could play around with, shake and rattle around, and see it work rather than buy our word for it.

Obviously, I'm no multi-time hackathon winner, so you'll have to take this lesson with a grain of salt. But, I can speak to the importance of execution outside of hackathons themselves: just look to Kickstarter, where thousands of great ideas become less-than-stellar products.

I learned this lesson when I reflected on my time working for WAC and OMUN - while I think I had some great ideas about streamlining the design and development process, creating novel ways of engaging with our audiences, and upping our storytelling skills, their execution was never perfect - and that's why they never made the exact impact that I wanted, nor have they stood the test of time (or rather, me leaving for one year).

This is no new content, so I'll stop myself from rambling on further - but it's always nice to hammer home an important lesson.

# TL;DR

Five people (Allison, Ashvin, Jeff, Juan, and me) participated in a hackathon at UCLA, where we made an RFID-enabled smart lock. We all did a pretty good job of making the lock, and as a result won the entire hackathon - all while having a good time. The two big lessons that we learned were that it was important to sleep well and treat ourselves while we worked, and that execution matters a lot more than ideas.

We'll see if I do any more hackathons.

Until next time!
