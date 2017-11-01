---
title: 'WAC: Third Time''s The Charm'
date: 2017-08-13 18:44:41 Z
categories:
- dev
layout: post
---

I just took a break from playing Skyrim to do work on WAC.

A conference that's happening in **February of 2018.**

Why?

I could've watched more of the office, play one of the 50-odd games in my "to-play" queue, or finally starting working on a paleta-cli. But, I didn't. Instead, set up a new world.ac repository, ported things over to the new Bootstrap 4 Beta, and did some server work.

Why do I do this to myself?

## Not So Agile

I want to start off by talking about the development cycle for other websites I make. It looks something like this:

1. Create Idea for Website
2. Create Website Prototype
3. Refine Visuals/UI/UX
4. Refine Copy
5. Publish!
6. Long-term maintenance.

Steps 1-5 usually takes a big chunk of time, but after we do most of the ground work, any other improvements and maintenance is pretty easy to do. A good example of this is the [Prefects Cup Website](https://pc.ucc.on.ca): after implementing this incarnation of the website in early 2016, I haven't had to touch it other than to fix a few bugs.

Now, let's go over what the WAC website development cycle looks like:

1. Create Idea for Website
2. Create Website Prototype, minus a functioning registration system since team didn't do that
3. Refine Visuals/UI/UX
4. Wait on copy from other members
5. Oh shit, we need to release something soon even though we have no copy
6. Cobble together poor website publish and "functioning" reg system
7. Update copy as we go along
8. Turns out the registration system was poorly coded since we didn't know how to make a good one
9. Patch together registration system
10. Conference starts/ends
11. Looking ahead next year, we should probably refactor all of this bad code
12. Matt's summer is ruined

As you probably have figured out, I'm not a fan of how management has worked at WAC in the past. I won't go into too much detail, but WAC is far from a well-oiled machine. Like most student organizations, it ends up being a tight core group of people doing far more work than they were assigned.

The WAC website itself shouldn't be a one-man job. It's a front-end, back-end, copy-writing, and server administration job all baked into one. Now, if that were the only thing I had to do for WAC, I'd probably be able to manage. Unfortunately, I also had to do graphic design, marketing, social media, logistics, and even some conference programming. That's **not** sustainable. As such, my code ends up taking a quality hit when I juggle everything else. Maybe I don't implement good server-side error logging, and maybe I don't do a good job on accessibility.

In the short-term, it's not that big of a deal. Minor monkey patches might take a little more work with this shaky foundation, but it'll do.

In the long-term, it is a bigger deal. Let's take an example going into WAC 2017 (last year). Previously, I had inherited a sketchy PHP code-base for WAC 2016. Since I was a bit newer to the job, I just ran with it, throwing Bootstrap on an already teetering code base.

It went quite poorly.

I ran into a lot of bugs that made development life hard, ranging from migrating our webserver from a Minecraft host to serving files with special characters to trawling through the mess that is PHP system logs to find where I forgot that parentheses. While it wasn't all PHP's fault, the complexity of the system contributed to just how bad everything went.

After that, I thought about what we needed vs. what we were using. For a static site, we don't need PHP: it's actually **too much** for what we need, and was a bit too complex. So, I spent that summer reworking our site into a [Jekyll-based](https://jekyllrb.com) site, which did make life a lot easier. It made testing and deploying significantly easier, not to mention less headaches from debugging random problems.

It also ate up some of my summer, which was already a bit hectic because of SHAD + DE. I do think that the website itself was significantly better this year with Jekyll, and we ran into way less problems on development and deployment.

## Groundhog Day

Yet, there were still improvements to be made. Our registration system this year, a new initiative that I thought was going to make life easier, still had major problems. This was stuck in PHP hell, since I hadn't spent enough time porting it over properly from a previous project (TheBuzz, if you were wondering). The UI was rushed and therefore non-intuitive, the database was poorly set up, and it didn't even work with some special characters.

I'm taking the same step this summer, though this time with a team. I'm documenting more and more of the work that I've done, so the unlucky soul that has to take over my job next year has something to come back from. I'm working on polishing more and more of our front-end code so that it's easily editable and harder to break. Our development team is rewriting our registration system from the ground-up, so that we have a more stable and functional base going forward.

And in theory, that's the right thing to do. Poorly coded short-term fixes are terrible in the long-term, especially for those who inherit it. Yet, I can't wonder but be a bit skeptical. This next year will be my third year as the "Head of Technology" or "Lead Web Developer", even if that's no longer my official title. Every year, I promise that I'll write the best code I've ever written so I won't have to do a rewrite next year.

Every year, I end up rewriting my code.

It's hard to say exactly why this happens. I think it's a combination of poor organisation (delegating work and timelines), rapid change in coding skill (my code from 2 years ago makes me want to vomit), and overcommitment.

Poor organisation is the easiest thing for us to change next year. I've been able to get more people to cover my bases, so I no longer have to do 8 people's job descriptions. I've implemented systems that minimize the effects of poor organisation (like pre-determining timelines, getting backup workers, and practicing yelling at people), and combined with new leadership next year I'm slightly more optimistic.

I hope that my code from last year is enough to stand the test of time (or at least two years), and I think it'll be fine. As of overcommitment, I've talked about it in length on this blog already; it should be a problem of the past next year.

I think I've learned something over these years of WAC, even though it's quite far from what I expected. And for this last year, I'm more optimistic than I've ever been.
