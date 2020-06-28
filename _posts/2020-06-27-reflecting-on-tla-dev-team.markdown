---
title: 'Reflecting on the Teach LA Dev Team'
date: 2020-06-27 02:34:50 Z
categories:
- dev
author: 'laundromatt'
layout: post
---

This is not even close to the most relevant topic to discuss at the moment (it seems that as the days go by, the United States is on fire more and more). But, it's not like anybody really reads this blog in a timely fashion anyways, and I want to spend a bit of time thinking about this as I move forward with similar ventures for the summer and beyond.

What is this exactly? It's a reflection and a review of my time leading ACM Teach LA @ UCLA's Developer Team (the full name is a mouthful, I know). I want to spend some time thinking about how it grew this year, what I did well, and what I'd do differently if I had the opportunity to do it again. I think this exercise will let me better manage dev teams in the future, and I hope it also sheds some insight into how we operated as a team this year.

As I anticpate that this'll be a long post, I'll include a table of contents, for your reading pleasure. Feel free to jump around; once you know how we work, most of the parts are pretty self-sufficient.

## Table of Contents

1. [Table of Contents](#table-of-contents)
2. [Some Background](#some-background)
    * [the past (2018-2019)](#the-past-2018-2019)
    * [the present (2019-2020)](#the-present-2019-2020)
    * [the future (2020+)](#the-future-2020)
3. [Some Good Things](#some-good-things)
    * [beginner friendliness](#beginner-friendliness)
    * [ideas and ambition](#ideas-and-ambition)
    * [automation](#automation)
    * [controlled growth](#controlled-growth)
4. [Some Things to Work On](#some-things-to-work-on)
    * [training and support](#training-and-support)
    * [attrition and retention](#attrition-and-retention)
    * [follow through](#follow-through)
    * [pace and deadlines](#pace-and-deadlines)
    * [standards](#standards)
    * [design](#design)
    * [the true "full-stack" experience](#the-true-full-stack-experience)
    * [teams and organization structure](#teams-and-organization-structure)
5. [Some Closing Thoughts](#some-closing-thoughts)

## Some Background

I first want to spend a bit of time laying some ground work for what I'll be talking about. This is kind of a play-by-play, so if you're interested in the conclusions, you can just skip this and go straight to the good and the bad.

Some basic things you should know:

* **ACM @ UCLA** is a large computer science club on campus at UCLA. It's the largest one by membership, and is split up into several "committees", each of which focuses on a specific topic. I'll colloquially call this *ACM* from now on.
* **ACM Teach LA** is a commitee of ACM @ UCLA specifically focused on computer science outreach. Its main focus is providing equitable access to computer science classes in the Los Angeles area. I'll colloquially call this *Teach LA* from now on.
* **ACM Teach LA's Dev Team** is a part of ACM Teach LA that, well, develops stuff. This is the focus of this reflection, and I'll refer to this as the *Teach LA Dev Team* or the *Dev Team* for short.

And, without further ado,

### the past (2018-2019)

In the fall of 2018, I was a first-year at UCLA, literally just hopping off the plane at LAX. Before coming to university, outreach and education was always something that I was really interested in, and I wanted to continue doing that when I came to UCLA.

As many universities do, UCLA has several sets of large club fairs to get students accquainted with what they can do outside of the classroom. I heard about ACM, and like many CS majors at UCLA, attended their fall general meeting. Even though they booked a large campus audiotorium, it was still full - so full that even overflow seating was also full - and unfortunately, meant that there wasn't even space for me to attend.

So, I kind of awkwardly waited outside, and afterwards went to some of their pop-up tables that described what each committee did. I happened to stumble across ACM Teach LA, and I thought it was a club that looked really interesting! In particular, I had a chance to talk to their current Dev Team Director, and really hit it off with him; I promised to join the team. He pitched me the work they were doing on this cloud editor: one specifically designed for kids, with a kid-friendly interface, no email required, and languages that supported Teach LA's curriculum. That sounded great to me!

For fall quarter, they were mostly doing React training; I already had significant work experience with React at that point, so I was told to just come back in Winter. This isn't really relevant to the story, but I ended up spending a lot of this time doing debate at UCLA's Debate Union - an activity that was somewhat enjoyable, but not nearly as much as it was in high school.

Then, winter quarter rolled around, and we got to work. I spent some time getting familiar with our codebase: our sole project at the time, the cloud editor I mentioned earlier, was comprised of a React + Redux frontend, with a Firebase Cloud Firestore database; we had a middleware Express "backend" that separated some of our business logic from the frontend, but it was pretty simple.

To give some context, the editor was a pretty new project at that point: it only started in April of 2018, and was mostly a haphazardly-assembled MVP. I don't mean no shade here: creating a new editor is lots of hard work, and I'm still amazed by how much work the team was able to do by then. However, there was definitely a lot of technical debt: the delineation between frontend and backend was very murky, and many features and paradigms were only part-way implemented (for example, some components would just choose to use Redux or not, which is never what you want).

I believe that this was the first official year of the dev team, and we were a small (but relatively tight-knit) team. Our director was a fourth-year, and the other constant members of our team were 3 second-years and 2 first-years (including me). That's just around the team size you'll often find for many university coding projects, though the skill distribution (all of us had only front-end experience, except one with backend) isn't ideal.

Our task was to do two things: first, to implement new features so we could "launch" the editor for an event in April of 2019, and second, to clean up as much of the codebase as possible so we could do larger scale work (such as editor themes, impelementing new languages, code distribution, etc.). Since I had professional experience with React (and a working knowledge of Redux), I was tasked with a lot of the refactoring and heavy-lifting for new features.

Did I deliver? Kinda. I did get quite a few major refactors in, but probably not the biggest fish (grrr `mostRecentProgram`). I implemented a "Sketches" page (where a user can see all of the programs they've written), though looking back it could be a lot better. And, I had the opportunity to lay the groundwork for some standardization and automation, from reducing our bundle size by tree-shaking our icons to implementing our Travis CI + CD pipeline. Still, in hindsight, there's a lot more I could've done.

Then, spring quarter rolled around. Two things happened. First, we hit our deadline for releasing the editor, and we succeeded. We pushed all the features we needed, and used the editor for an on-site event where our club brought students to UCLA, teaching them about computer science and giving them a taste of college life - aptly called "Day of Code". It went without a hitch, or so I was told.

Secondly, our dev team director was going to graduate and move on to bigger and better things. We needed a new dev team director.

Sometimes, there will be elections, or some fierce drama as people claw for power.

That wasn't really the case with our dev team. In fact, it seemed like nobody (including me) wanted to lead the dev team (something that surprised me at first, but this happens much more than you'd think). One thing came to another, and I was volun-told that I'd be taking on the position. And with that, I became the dev team director for ACM Teach LA's 2019-2020 year.

### the present (2019-2020)

Wow, I didn't know what I'd be getting myself into. This would be my first time truly leading a dev *team* (in high school, I did lots of dev leadership, but usually our "team" was just... me). I was excited! This was an opportunity to really make an impact with social impact software development, which was (and still is) one of the career paths I was considering.

At the time, I distinctly remembered that I had a few goals in mind:

* create a website for Teach LA. At the time, our committee didn't have a website - in fact, it barely had a web presence at all - and I thought any well-respected outreach organization needed one.
* diversify our project space. I wanted our dev team to do more than just make the editor! In particular, I believed in *comparative advantage*: compared to everyone else, what's the best use of our resources? 
* recruit more developers. I loved our team and what we did, but I also wanted to grow - this goes hand-in-hand with more projects.
* streamline our training and onboarding process. This is a pain point for any developer team, but especially for us: we kind of threw a React/Redux to-do list tutorial at our devs and walked them through it, but was that engaging? Was it really educational?

Over the summer, knocking out a static website was pretty simple. I spent a few hours and knocked out a very basic state site using [Jekyll](https://jekyllrb.com), and surprisngly, no CSS framework (which took a bit more effort than it was worth). Eventually, we got something pretty similar to what's live right now (as of June 20th, 2020), at [teachla.uclaacm.com](https://teachla.uclaacm.com). We got it up and running for the public before the fall quarter started, which I think helped significantly with recruitment and formalizing our online presence. Still, there's a lot I don't like about the static website - more on that later.

Then, we hit fall quarter, and my work really began. Without knowing much about... anything, really, I started to recruit aggressively for our dev team. I went to our Enormous Activities Fair (literally thousands of students tabling for clubs), our ACM General Meeting (500+ people overflowing an auditorium, but at least I got to go this time), and other events here and there. My pitch was actually dead-simple: I said Teach LA's Dev Team was completely beginner-friendly, with no prior experience; and that I'd be as invested in your growth as a developer as possible.

I truly believed in that mission statement. Looking at other fast-paced dev teams on campus (like Creative Labs projects or DevX), they really hit the ground running. That's great for people with some prior experience, or for people who are great self-starters, but that isn't everybody. I wanted to create a niche space where people who are beginners or students who are suffering from impostor syndrome (deadly in CS) felt comfortable growing as developers. I really did want to foster a development team that was really invested in the developers, because that's how you get kick-ass developers - and also fill in gaps in CS education that our members likely would've missed out on (a chronic criticism of UCLA is the lack of practical application in your degree).

And I've got to tell you, the pitch seemed like it worked. We had 30 people come to our first dev team meeting, which was insane - a far cry from the motley team of 6 that worked on our editor last year.

Unfortunately, I stumbled quite a bit here. It turns out, personally working with 30 developers is **really, really, really hard**. I really didn't want to toss people a bunch of resources and have them read through it, but I quickly realized that creating individual learning plans for 30 people just isn't happening. So, I ended up splitting up our devs into two groups (no experience at all, and some JS experience), and gave them some resources, checking in on them weekly. This... isn't what I wanted it to be.

Evidently, that was the case for many of our interested people as well! As fall quarter went on, our numbers dwindled (which is the case for all clubs); by the end of fall quarter, our team was 20 strong - which to be honest, is actually quite solid in terms of attrition. Still, I think we could've done better.

Almost the entire fall quarter was dedicated solely to training, but we still got some work in. I assigned some static site tickets to onboard people to the git workflow, and to practice HTML/CSS/JS. And, we got a bit of editor work done: started reworking our login page to be more inclusive, refactored a LOT of bad code, and added some QoL features (like a separate staging server, a download code buton and some bug-fixing). We also started work on two major editor features: "View-Only" code pages, and the classes code distribution feature I mentioned earlier.

We also started working on a go backend to replace our JS backend. This was part of an eventual plan to completely phase out Firebase (as there were quite a few things that we couldn't do super effectively with our current tech stack, such as resetting passwords, creating custom data types, or creating different tiers of accounts); plus, it gave us a chance to redo a strange setup for our JS middleware, and start from a test-driven development process.

Winter rolled around, and despite my gripes with out training process, I didn't do much to change things up (something I regret). As more of our developers got familiar with our web technologies, I realized that the editor just wasn't enough: there are only so many people that can work on a feature at the same time, and there are only so many improvements that you can make to an editor without them all conflicting with each other.

So, I put my two brain cells to use, and I came up with a semi-solution. I wanted Teach LA's dev team to start making interactive modules that could supplement the existing teaching that we do; for a club that teaches kids computer science, we took a very old-fashioned approach to it (pen and paper, powerpoints, code examples, etc.).

For this entire year, I had also been teaching an Intro to Artificial Intelligence and Machine Learning class at North Hollywood High School, so I wanted to whip up a very quick proof-of-concept for this idea; I settled on a gradient descent visualiser, which [you can see here](https://uclaacm.github.io/gradient-descent-visualiser/). It's really short, but it hit most of the ideas I was thinking about: it's relatively unique (I didn't find anything similar with a google search), it's simple and easy to use and understand, and it's directly tied to our course material.

It got generally positive vibes, so we started a few more of these as projects, which included modules on networking (started as one, but is becoming three?), ciphers, password security, mean squared error, and Bayes theorem. Instead of having one giant monolothic dev team, we split up into smaller, 2-5 person teams, and worked on these projects concurrently.

This occupied most of the winter quarter, though the advent of COVID-19 threw a wrench into some of our plans. I will say, progress didn't go as fast as I expected for winter quarter - and I'll reflect on that for a bit - but we still got a solid chunk of work done, and I think it was definitely the right path to steer the dev team on. In the background, we still got lots of editor work done: implementing a light mode/dark mode toggle, almost completely finishing View-Only (which was a huge headache of a feature to implement), and almost wrapping up our login page redesign.

And, at the end of the quarter, I ended my tenure as the dev team director; I ran for president of Teach LA, and ended up winning (which is exciting and scary), and appointed a new dev team director.

By the end of my run, I was happy with how things were going, but nothing felt complete.

### the future (2020+)

Unfortunately, COVID-19 then hit universities hard, and spring quarter (the dev team's first quarter with the new director) was completely online. Running clubs online is hard, and it's even harder when each student's motivation and enjoyment of life goes straight into the gutter. To no fault of anybody, dev team progress stalled.

I won't delve too much into spring and past that because it's been a bit too recent, and I don't think there's too too much I can glean from there. There's some thoughts I have on running a club online, but I'll save that for another post.

(I'm totally not ending this early because I'm running out of steam)

## Some Good Things

Okay, so now we have a bit of backstory on what I did as the dev team director for two quarters (which is a short tenure, really). I want to spend some time talking about what I think went well, but not too much - I'm much more of a constructive criticism person anyways.

### beginner friendliness

Culturally, this is the thing that I'm the most proud of. I honestly do believe that coding can be for everyone (that's why I'm in Teach LA), and that extends beyond just providing classes for coding: it involves creating experiences. I wanted to create an environment where *anybody* feels comfortable joining our team and picking up the skills they need.

There were a few specific things I did that I think helped create a beginner-friendly atmosphere:

* **do not require interviews**: this scares off developers who feel like they're unqualified or do not belong
* aggressivly advertise that *no experience is required*
* try to provide different levels of training and project work in different areas of web development
* when people would ask about joining, worrying that they had no experience, tell them that *no experience is required*
* allow for variable committment and deadlines (this is unique to our dev team because we don't fundamentally operate on deadlines)
* emphasize a culture of learning: mistakes are okay, and maintain that the dev team is a resource for developers
* reiterate that *no experience is required*

You'll notice that it involves saying the words *no experience is required* a lot, and focusing on this being an educational experience. I think that really is a large change from many other university dev teams: they tend to be focused on delivering a product as their main target. Let me be clear: there is nothing wrong with that, and in fact, you need that attitude to get work done. However, Teach LA's dev team was in a unique position where our existing product (the editor) was already being used, and that the new projects we proposed (the modules) had no hard deadlines; that gave us a lot more flexibility to let our developers approach them the way they wanted to.

The lack of selection process (i.e. everyone is welcome) is a pretty radical choice: I am not aware of any other campus dev teams that have literally zero screening process. I stand by this is a very good metric: no developer is innately bad at coding (imo), and we can always work on making sure they're up to par with their dev work. I will say, things like team cohesion, communication, attention to detail, are much harder to train - and problems we ran into - but I wouldn't necessarily trade that for the negatives you get from scaring off a large portion of beginners. I will say, we once again benefit from the nature of our work: because our projects aren't as mission critical as say, spacecraft controls systems, we can afford some time and resources spent towards training and fixing mistakes.

I will say, I faltered a bit on the execution of making our team beginner-friendly: in particular, I could've done a better job of supporting our developers. More on that in the training constructive criticism set.

As an aside, I think beginner-friendliness comes hand-in-hand with diversity and inclusion. One of the largest problems that computer science faces is an extremely gated community. Impostor syndrome, superiority complexes, and cockiness run rampant throughout the scene: think of the classic "wow, you only know X thing? you're not a REAL programmer". Combine that with sexism, racism, and homophobia (amongst other discriminatory prejudices), and you get a deadly cocktail of cultures that actively bars out people who don't fit the ideal stereotype of a programmer. In turn, that means that any sort of restriction you put on recruitment (like applications, or previous required experience) is most likely to shun out those disenfranchised groups. Since we're not writing mission-critical software, and that one of our organization's goals is to improve CS education, it seems only natural to emphasize beginner-friendliness - and hopefully, to make CS a more diverse place.

If I could do it all over again, I'd double-down on this message, and really focus on the execution. To me, this is a core tenent of our team, and one of its biggest successes. But, it also relies on how well you treat these beginners - and I think that's been one of my biggest failures as a dev team director.

### ideas and ambition

This'll be pretty short, but it's basically the consequence of the adage "shoot for the moon, even if you miss you'll land among the stars". I had **a lot** of things I wanted to do as the dev team director. Many of them never ended up happening, but I'm glad I spent some time fleshing out what could be done - either so it gets added to our super-long queue of to-dos, or that we can confidently say that we've explored the option and decided to not pursue it.

Here are some things that we never ended up doing:

* a really kick-ass static site
* a fleshed-out resources page, with pathways and easily understood cards
* a "tutorials" feature within the editor
* a forgot password workflow
* editor themes (not just light/dark mode)
* better pygame and rawinput/keyboardEvent support
* some learning labs (but more on that later ;) )
* a Teach LA blog (dev and pedagogy)
* a bot to automate reimbursement requests
* direct UI/UX research with kids
* mobile support
* codepen-style HTML/CSS/JS support

I also had some other goals, that while we didn't accomplish, put us on a good direction to accomplish them some day. Each of these still has a *long* way to go, but I'm happy with the progress we made:

* significantly more test coverage
* better code documentation
* refactoring out duplicate code
* formalizing the feature development pipeline
* visual standardization and accessibility
* dependency consolidation and auditing

That being said, ambition is one thing, but follow through and execution is another. There's a reason why you'll see follow through in the "Some Things to Work On" section.

### automation

This is a bit more technical, but I wanted to take the human element out of some tedious or automatable tasks. In particular:

* I started using [Travis CI](https://travis-ci.org/) for CI/CD and deployment to [GitHub Pages](https:/pages.github.com) for our editor.
* About half-way through the year, I swapped our editor's basic Jest checks to [GitHub Actions](https://github.com/features/actions) and switched our depolyment provider to [Netlify](https://www.netlify.com/), which is a change that I'm super super happy about: Netlify's builds on each PR are particularly helpful.
* I enabled [Dependabot](https://dependabot.com/) for our editor frontend/backend and some of our projects, which has made updating packages a breeze.
* I started generating our editor frontend's changelog with [gren](https://github.com/github-tools/github-release-notes), which helps us keep track of who did what.
* Prevent merges to our Frontend without all tests passing and a manual code review, which stopped some bugs from being pushed to prod.

These tools become more and more useful as we have better test coverage, but they already made life a lot easier - and I really appreciated that. Plus, it took human error out of the system, which is always nice.

### controlled growth

This last piece will be something that I'll muse a bit more on as I see how the dev team grows without my direct management. Essentially, **controlled growth** is growth **without compromising on your values**. While I'll outline several failures that I encountered, I am pretty happy with the principles that I tried to deliver on for the dev team, the very same principles that underpin Teach LA's push for equal CS education, and the principles that inspired the dev team to exist in the first place.

In other words, I think that our dev team has a unique lane in the realm of dev teams at UCLA: we're a team without short sprint-work, we accept complete beginners, we try to allow for extremely variable committment, and we allow a significant around of self-direction and management in terms of large projects. Even as we quadrupled our member size and took on more projects, I'm happy to say that we're still in that lane, and that we're adding something significant to the dev landscape that exists today.

## Some Things to Work On

I think constructive criticism is the most important type of feedback. Looking back, there's a lot that I wish I did slightly differently:

### training and support

This is by far the largest issue I think our dev team had. As I mentioned earlier, I simply didn't have the resources to fully deliver on my promise of 100% dev support, and that's something I regret not anticipating. I wanted to create personal training plans for each developer, have time to sit down with our devs and work on their problems individually, and see them grow throughout the year.

To some extent, this is an example of just straight-up overpromising and overcommitting, the latter of which I have a chronic case of doing. But, there was still a lot more I could've done given the situation I had at hand.

For example, I had thought that our team didn't want to listen to me "lecture" about web development during our meetings, since I had felt that they already went through a bunch of class and didn't want more class. But, I trialed a few of these at the end of winter quarter (the end of my time as a dev team director), and they were received positively! In hindsight, I should've provided more opportunities like that: self-learning is hard, especially when you don't know where to start; engaging presentations and flyovers/introductory talks on topics would've been a good way to provide preliminary support.

In general, I think I did a poor job of preparing our developers. I don't want to spend too much time delving into the details of how I failed, but rather, what I'd do next time. Here are some thoughts:

* I'd kick us off with an (optional) developer bootcamp. We would hold these during our normal meeting times, with pre-prepared materials that get our beginners up to speed on everything they'd need to know to start contributing to our codebase (not necessarily leading a feature yet). This is something that many orgs (even big companies) fail at doing, but it's something that we'd need to at least try.
* During our bootcamp, I'd also pair every beginner with one onboarding buddy, ideally an experienced member of our team. They'd be the go-to person if they had any questions about the material. This lightens the load on the bootcamp instructor, and also ease people into our team.
* Then, after the bootcamp, I'd push for all of our members to make a simple contribution to a project: something that's not intimidating, but that they can take ownership of.
* Then, throughout the year, I'd discuss more complex concepts at our meetings, with enough depth that our more experienced members would also learn a little. I'd try to get feedback on what topics that people would want to learn about, and even bring in guest lecturers if necessary.
* I'd also do team-specific trainings: for example, the Go backend team probably needs to be onboarded on Go, while our Frontend team should learn about React. Scheduling these is tricky, but I'd try to delegate this to our team leads if possible.
* If someone joins mid-year, we'd put them on a team, and have their team lead be their onboarding buddy + bring them up to speed. We'd be transparent that this process takes some time.
* By the end of the year, we should try to make sure that every member of our dev team has a larger-than-minor feature or product that they have taken ownership on, and are proud to put on their resume.
* We should be continually checking in on what kinds of support all of our members need, and adapt appropriately.

Some of these are impossible to do with our current resources, but this is the picture-perfect, Goldilocks recipe that I'd want. If I could only focus my energy on one of these bullet points, it'd have to be the beginning-of-year bootcamp: without a solid foundation, any other training I do is a house of cards without its base.

This is a perennial problem that tech companies spend millions of dollars on, and something that college clubs struggle with as part of their guaranteed team churn (since, you know, people graduate). On a broader scale, fixing this problem at UCLA is something that I'm interested in.

### attrition and retention

This is not a problem unique to the Teach LA dev team, or dev teams in general, or CS clubs in general: it's a problem that every extracurricular will face. You'll have tons of people come to your info session, then less to your first meeting, and even less at your second, and it just goes on.

But, I think every club can always look to improve retention rates, and our dev team is no different.

I think the no-brainer to increase retention is to do better in training: if I did a better job of making our devs feel less lost, and more with a purpose of what they were doing, they'd definitely be more likely to stay. I did get anonymous feedback that the lack of a rigorous support system in fall quarter was hard to work with, and I completely agree.

But, there are other things too. One thing that I only started doing in retrospect was reaching out to people who stopped coming to our meetings. It seems counter-intuitive: they ghosted you, so why are you double-texting them? But, this does two very important things. First, it can provide an avenue for feedback: only talking to members on your dev team can reinforce a surivorship bias of some sorts, and create an echo chamber or a clique-y vibe (though I don't think we had that specific clique problem). Learning from your failures is probably more important than your successes.

But the second is that it shows that you care. Sometimes, people just forget about clubs, and sometimes, they're just really overwhelmed with all of these things they have to do and the people that our joining. Reaching out personally shows that they aren't forgotten, that you care about their voice, and that you want to work *with* them: not scare them away. I think this is particularly important in combatting impostor syndrome, which plagues a large part of the CS community.

And sometimes, it is the best move for people to leave the dev team. That's okay. I think the silver lining here is that when I finally did end up reaching out, I inevitably learned more about the people that I worked with, and more about the problems that they face. Sure, I'm a dev team director, but I'm also a classmate and a human - and there are some things that are more important than the dev team. Sometimes, that reaffirmation, that it's okay to take a break, is extremely valuable - and rare to get.

There's no silver bullet for reducing attrition: there's the catch-all of just "being a better club", but that's useless as constructive feedback. However, I think I should've spent more time interacting with the people in our dev team on a personal level: you'll get to something more important than retention, even if you'll solve that problem in the process.

### follow through

This failure is in direct contradiction to the "idealism" and "ambition" that I talked about earlier. As much as ambition is good, you also can't bite off more than you can chew. Training and support is by far the most endemic issue I faced in this nature, but it's not the only thing - let me quickly tell you about the other ones.

One struggle we had was with throughput. I would assign people to all of these tasks, and try to give them support to help them with it - but, it wasn't enough. We *started* a lot of projects and features this year, but we barely *finished* any of them. Part of this is that I could've been harder on our team, though that's something I'm very warying of doing. But, a different approach could've been to check in with people more frequently (i.e. following through), making sure that they got the support they needed. Continually pestering people might be annoying, but it also lets them know that you're there for them; and, sometimes, people will only let up that they need help after two or three check-ins.

Another problem we had was with wrapping things up. Often times in software engineering, finishing the first 90% of a task takes just as much time as finishing the last 10%. Doing that last stretch is often not fun. You don't feel like you're making any progress, you're fighting dumb bugs and sliver edge cases, and eventually, you'll get burnt out working on that same project over and over again. This just ended up being either me taking that last 10% (which is not sustainable at all), or just skimping our efforts on that last portion. Neither of those options will truly produce good, high-quality software, and that follow-through is crucial if we want a more professional team.

The last thing was in terms of what we'd do *after* the project was done. Ideally, a project team would then conduct user research, collect feedback, and then implement it and touch them up. Unfortunately, we didn't really do any of this: our dev team never directly interacted with instructors or kids in terms of the products that we provided, and that's something I wish I followed through more on.

At the end of the day, most student clubs fail on follow-through, and some of that is inevitable. Still, you can always do better - and I think those three key areas (most of the legwork of a project, the last mile, and continuous development) are a good way to break up different ways in which we could've improved on follow-through.

### pace and deadlines

This one will be short. My management philosophy for our dev team was to be deadline-light, because, well, we didn't really have deliverable deadlines. Our editor just works, and the learning modules that I wanted to create probably weren't going to be used until next year. So, I said "do it at a pace at which you're comfortable with", and left it at that - I wanted to be considerate of the other obligations that our team had (being, you know, students and all), and didn't want to add more pressure.

In hindsight, that's a pretty dumb way to approach things. As any college student will tell you, people procrastinate things all the time, and if there's no deadline, sometimes they never happen at all. I'm guilty of that myself (just look at how sporadically I write on this blog, even though there's always a backlog of topics).

There's a better way to tread the line between asking for too much from your developers and just *not having deadlines*. Instead, I should've worked with our team to create reasonable, bite-sized deadlines that fit their schedule, and then lightly enforced them. For example, we could break up a large feature due in ten weeks into four or five ~2-week sprints, and make each of those sprints extremely manageable.

The psychology of planning out your work and creating deadlines helps people compartmentalize their work and actually get it done, but this still gives me an opportunity to make the dev team a committment-light, welcoming place.

It also gives work-hungry developers a clearer picture of what they can do and what's available, which is great.

So yeah. My pacing and deadline policy was dumb. Definitely a better way to do that.

### standards

This one will also be short. Work can always be up to higher standards, and usually (but not always), that makes it better.

We certainly didn't regress in the standards of our work: I put a larger emphasis on writing clean code, we refactored a bunch of stuff, and we wrote some tests. We spent a lot of time tweaking our design to be easier to use.

But, I can't help but say that I'm not happy with the quality of our work. Obviously, it'd be unfair to compare our editor to VSCode, but damn, I really want that comparison to be closer.

This'll become a larger problem as we come to learning labs, where we have deliverables that are more unique and need to be sold on. No actionable lessons here, but something to keep track of in the back of my mind.

### design

Teach LA never had a dedicated designer. It's not that I didn't try to recruit one; I did. But, I definitely didn't try *hard enough*. Functionally, this meant that we had to either rely on one of our devs as a designer, which is lots of hard work (and something that I can't particularly coach people on), or externally request things through ACM Design, who were constantly overloaded with design requests.

I firmly believe that many of the problems that our dev team are rooted in design. There are tons and tons of code editors out there: what separates editors that are kid-friendly from those that are not come primarily from **design**, not technical work. Sure, features are important, but you ultimately need to make something that is **engaging** to kids, **easy to use**, and **educational**. All of these things have their roots in (or very near to) good UI & UX Design.

I think this is even more profound for our learning modules/labs. Here, we're not just providing a tool: we're creating a *narrative*, where kids explore a topic **with our framing**. We aren't conjuring up new topics for kids to learn: there are already websites, textbooks, and videos that explain the topics that we want to teach. The difference, and our competitive advantage, comes from **our presentation**: so, our presentation needs to be pretty damn good.

So, what would I do again? I would spend a lot more time recruiting for designers: if anything, I think we needed a **lead designer**, someone who enjoys creating a standard visual language, and creating narratives. This role doesn't necessarily need to be very technical - I think it's much more about how someone empathizes with the consuerm - and thus, I could've cast my net much further than just ACM GMs. Great designers come from all majors, all years, and different levels of work experience: I should've gone to as many events as possible, and looked there for help.

If that didn't work out, I should've delegated pure design (and not dev) to someone willing to learn (which is very common). I think having a dedicated designer would've solved many design language problems (since they'd have authority over design, rather than our model of individual devs owning their own design work), and after practice, they'd be great at weaving the narratives that we'd need for our learning labs.

This is something that I'm still on the lookout for. Hopefully, we'll fix this problem next year.

### the true "full-stack" experience

This will be a brief piece of technical blab.

At the beginning of the year, I asked people what they were interested in. The response was overwhelmingly Front-end, some Back-end, and literally no interest in testing, DevOps, and refactoring. I thought that was fine: I wanted to give the people what they wanted, so I barely talked about these topics and did it all myself.

There are two issues with this thought process. First, these nitty-gritty details are scary! Even though people might be interested in them, they'll hear about all of these buzzwords (Docker, Kubernetes, k8s, Heroku, swarms, sharding, EC2, S3...) and just think "I can't do that!". And it's true, managing a cluster or spinning up dynamic load balancers is tricky, but that's not what the Teach LA dev team requires! Our deployment process is pretty simple, though it's still a good primer for everything you need to know to deploy your own web application (CI/CD, hosting, DNS, etc.).

Since I didn't explain that it really was that easy, I know I scared a few people off. Eventually, I got around to showing them (for one reason or another), and the response has universally been "wow, I wish I knew that earlier" - and that's something **I had complete control over!!**

The second issue with the thought process is that it's also just an important skill for web developers to know. Auto-deploying a frontend with Netlify is like 3 clicks, but it's a crucial part of writing your own app. If I really want to follow through on my mission of empowering our developers, I should've just spent the few minutes to walk them through that entire process.

So, in sum, I should've spent more time talking about some of the nitty-gritty of web development, and how that (on the hobbyist level) it's both important and not that intimidating! If I did, I think I would've better enabled our developers to take the skills they've learned at the dev team, and use it to make their own kick-ass projects.

### teams and organization structure

This is a piece of feedback that I'm a bit torn on.

For a good portion of the two quarters of the dev team, we functionally ran a very *flat* organization structure: I was our PM, Lead Dev, and DevOps lead, and everybody else was a standard dev.

Flat structures have many benefits: they can reduce bureaucracy, make the team very quick and agile, and make sure that voices aren't drowned up. They're especially effective when everybody on the team is generally on the same page, both in terms of ideals and skill level.

But, I think that these gains are only realised to a certain point: once there are too many people in one organization, you start losing the benefits of a flat structure: your one manager spends too much time juggling around the tasks of every developer, and they end up dropping all the balls.

I think this is what happened with our dev team. The flat structure worked really well the year before: we had a small, tight-knit team of developers that generally knew web development and what needed to be done. Because of that, we were able to rapidly add new features to the editor, such as the sketches view, significant progress on the classes feature, and had a great time.

Unfortunately, you can't replicate that vibe with 20+ developers in one team. The overwhelming size of the team makes it hard to feel like your voice is being heard, and it also makes it hard for me to manage the team, as we had ranges of different people (from those with previous FE experience in freelancing and internships, to those with no CS experience at all).

I realized this problem pretty early on, and tried to delegate a bit more. I made Leo (our current dev team director) the head of our Go backend division, which looked to swap out our Express-based editor backend for one written in Go. He did a solid job of taking ownership over the product, and the smaller team there made lots of progress.

However, I really should've done that for... every subteam on our dev team. In hindsight, I would've appointed lead developers for our Editor Frontend, Editor Backend, DevOps, etc. Not only does this maintain the benefits of a flat structure within those teams, but it's also a great leadership opportunity for devs (which are few and far inbetween).

I doubly made this mistake again with the learning modules that we started to develop: I just created teams, but didn't really appoint a leader. For some teams, they just naturally chose one, which is great - but for others, they struggled with direction. In hindsight, I would've recruited project leads for these specifically (like Creative Labs at UCLA), which would make the project run a lot smoother.

There's quite a bit more to say here, but I'm still in the process of testing things out and trying out new things with Learning Labs and within ACM Teach LA in general.

Suffice to say, I've gained a new leadership principle. It's nothing too new, but I can't actually find a name for this, so I'l call this the **elevator principle**: a manager should only be directly managing a group of people that can all fit in an elevator together, if need be. This is much more restrictive than some of the other related principles (such as the "you should be able to address everyone you manage" idea), but I really mean it. I think having a deep connection towards the people and projects you manage is crucial to running a good team, and that's something I regret not doing with our dev team.

However, the reason that I am torn on this piece of feedback is that it's hard to know if this is the root cause of the problem, or if other things caused some sort of ripple effect. I've seen some situations where someone has directly led a team of 20 or 50 people, and they've done it wonderfully. Nevertheless, for me personally, I think this is a step I'll need to take.

## Some Closing Thoughts

As much as I have been (clearly) frustrated by how well I've managed the Teach LA dev team, it's still something that I'm very proud of. It gave me my first opportunity to really work in a large dev team (mind you, before this the largest dev team I've worked in was... the previous Teach LA dev team). It gave me my first opportunity to lead a real dev team, not just a team where I'm the only software engineer (every internship I've had thus far, all of my EC work). And, it gave me an opportunity to meet some really cool people, make some really cool things, and help them grow.

I'd love to do this again sometime. This year, I'm the president of Teach LA, so there's probably not too much time for me to do hands-on dev team work. But, I probably won't be president for my fourth year (fresh blood + I should give other people the chance), and that should leave me with some more free time. That free time might be consumed by research, or actually enjoying my life, but it also might involve me leading a dev team again. And that's something I'm looking forward to.

There is also a practical reason that I wrote this. As I work on Learning Labs (yet another project I've taken on), I hope to apply some of these lessons and create some amazing projects. And, as I intern at Amazon, on the other end of the leadership spectrum, I want to reflect on what I could've done better.

Wow, this was a long post. If you read all of this, thanks for sticking through with me on this. Hopefully, in a year or two, you'll see a much more positive reflection on my time at ACM as a whole.

But, in the meantime, I'll be working away.
