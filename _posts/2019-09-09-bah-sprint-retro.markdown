---
title: 'Sprint Retro: Booz Allen Hamilton'
date: 2019-09-09 02:34:50 Z
categories:
- dev
author: 'matt "passionate service" wang'
layout: post
---

I've just formally stopped working for Booz Allen Hamilton; for 8 weeks (and a bit) as a Summer Games Intern. It was a super valuable experience, and I want to spend some time to reflect (and give insight for anybody looking to work there in the future).

*For reference, everything here is my opinion - it does not reflect anything from Booz Allen Hamilton in any professional capacity. Many of the things I'll discuss here are from purely personal observation. And, I'm obviously not discussing anything classified or otherwise restricted.*

Also, this is a **really long post**. If you'd like, you can [skip to the bottom for a TL;DR](#tldr).

If you read the entire thing, you might notice that I run out of steam close to the end. Sorry.

## booz allen hamilton

*You can skip this if you'd like, it's not super relevant to the story. However, I actually enjoyed learning about Booz's history, and it's a more important company than you might think - for better, or for worse.*

[Booz Allen Hamilton](https://en.wikipedia.org/wiki/Booz_Allen_Hamilton) (informally Booz Allen, Booz, or BAH) brands itself as a management and engineering consultancy. Booz has a rich history. It's one of the oldest big consulting firms, older than Bain, BCG, McKinsey, Accenture, and many more; for a non-trivial amount of time, Booz Allen was a market leader in consulting.

However, BAH isn't a household consulting name. Most of this has to do with a spin-off of its management consulting branch (then called Booz & Company) in 2008, by the infamous private equity firm [The Carlyle Group](https://en.wikipedia.org/wiki/The_Carlyle_Group) (as a sidebar, you should definitely look more into Carlyle, private equity, and leveraged buyouts - it's a fascinating topic). Booz & Company was then bought by PwC (one of the big four auditors) in 2014, and was subsequently renamed to Strategy&.

So, what does Booz Allen Hamilton do now? I'd say that Booz is a government contractor <sup><small>[citation needed]</small></sup> - most of their work is in management and technical consulting to government agencies like the Department of Defense (DoD), Department of Homeland Security (DHS), and the Department of Health and Human Services (HHS). Their largest customer, by far, is the DoD <sup><small>[citation needed]</small></sup>. They still do commercial consulting work, but that client space is dwarfed by government contracts. Recently, they've also ramped up their investment in cybersecurity, and are beginning to compete with defense OEMs (think Boeing, BAE, Raytheon, Lockheed, Northrop) on civil government and military contracts.

Booz Allen took some PR hits in the last 10 years, most notably with whistleblower Edward Snowden: he very briefly worked for Booz to leak information from the NSA on PRISM (a mass surveillance program). Now, the official company stance is that Snowden targeted Booz specifically to get to the NSA, as he was already a rogue agent beforehand. Since then, BAH ramped up their information protection mechanisms, which is something I had to undergo when I got hired.

However, a less talked-about but more interesting criticism is their ties to actors in the Middle East. They (publicly) list offices in Abu Dhabi, Beirut, Cairo, Doha, and Dubai, and work closely with the UAE and Saudi Arabia to develop government infrastructure, centred on defense, military operations, and cybersecurity.  I'll leave it you to decide on the morality of that situation.

Booz is headquartered in McLean, Virginia, with several more offices in the DMV area. They have a small to medium-sized office in Los Angeles (well, technically, El Segundo) right beside the airport. The LA office mostly does work in aerospace, as it's right beside a [large Air Force base](https://en.wikipedia.org/wiki/Los_Angeles_Air_Force_Base). That's where I was hired, and that's where our story will begin.

## the job hunt

I do want to spend some time to talk about my experience getting to Booz Allen.

One of the things that scared me the most going to UCLA was my lack of a network. I had nobody to vouch for my skills or my professionalism, and the things that were on my resume happened thousands of miles away. However, I wasn't too frightened: I'm lucky that it's easy to show your work in computer science & software engineering, especially in web and mobile app development (which is most of the software work that I've done).

At UCLA, I was able to go to an event called Evening With Industry (EWI) held by the Society of Women Engineers (SWE). It was a great experience, and I'd definitely recommend anybody to go to EWI in the future: you get a great meal, an opportunity to meet other engineers, and a chance to talk to representatives from most of the big engineering firms based in LA.

I talked to an employee at Booz Allen, who was super friendly and nice to talk to (unlike some of the other recruiters that I've met at job fairs). At that point, I had only tangentially known about Booz Allen - mostly because of the Snowden controversy - but I did like the image of a consulting company that was looking to embrace diversity, and I was genuinely interested about working for Booz.

I followed up with the employee I talked to, and I applied online. Not too far down the line, I got an invitation to interview at Booz's office in El Segundo! So, I went to the interview, all dressed up like a smol professional boi.

Interestingly, my interview was entirely behavioural: the questions were focused on how I learned, my thought process, how I worked in teams, how I tackled problems I ran into, reflecting on past projects and mistakes - nothing particularly related to my coding ability, or any technical question really. I haven't had interviews like this before: for AudioNotch, I mostly focused on explaining technical decisions sprinkled in with coding questions, and for Blizzard (who I also applied and interviewed for), I had to bust through quite a few HackerRank interview questions (four hours worth to be exact).

Booz got back to me super quickly with an offer! Awkwardly, I had also applied for and done some interviews for Blizzard, and was in the process of going through several stages with them. Working for a video game company has been a childhood dream for me, especially since I now play so many video games. Ultimately, I had to make a decision: accept the Booz offer, which is safe but maybe slightly disappointing, or wait out/decline and hope for Blizzard.

If you know me personally, you know I'm a pretty risk-averse person. Gut kicked in, and I accepted the Booz Allen offer pretty quickly, and did my due diligence to let Blizzard know.

An interesting footnote on this whole escapade: I've told this story to quite a few people, and they all unanimously agreed that I should have taken the Booz offer, not told Blizzard, and just waited - if Blizzard gave me an offer too, then I'd be in a bit of trouble, but "why shoot myself in the foot beforehand"? I'm not sure if I agree with that line of thinking. To me, it's not the right thing to do, end of story. In hindsight, I have no regrets with how I handled the situation, though I will apply to Blizzard again next year.

Anyways, onto why you're actually here.

## summer games & C2SS

Almost all Booz Allen interns are "Summer Games Interns" - instead of doing client work (which is too valuable and often too secretive to have interns do), teams of 2-5 interns work to create a project in 10 weeks that solves some problem. Teams are presented with a problem statement, and a very general overview of what they need to do. Then, interns will plan out what features their product will need, conduct research, and hopefully create a working product by the end of 10 weeks. Booz then brings everybody to their headquarters in McLean, Virginia to present their final products in the "Challenge Cup". Overall, it serves to give interns a taste of the product development life-cycle, albeit in a firm that doesn't create products from scratch that often.

The El Segundo office had two teams of five interns. I was assigned to team C2: Shining Sea (a pun on C2, which stands for command and control in military lingo). Our task was to make it easier for American soldiers to board hostile ships to stop human traffickers, pirates, and smugglers. As I'm sure you can imagine, those kinds of operations (termed Visit, Board, Search, and Seizure or VBSS) are insanely risky. The special ops that perform VBSS are the cream of the crop, but they're still going in blind against a prepared enemy, often with hostages and civilians on board.

Specifically, our job was to build an embedded system (i.e. complicated electronic doo-hickey) that, when plugged into the ship, can somehow control it from within: spoof the GPS, open or close doors, turn on the fire alarm, etc. "Hacking into a ship" should be a huge tactical asset to VBSS operatives, and hopefully significantly minimizes casualties on all sides. This sounds like a pretty sexy project, and I'll talk about how it played out in a little bit.

I'm not going to go week-by-week on what we did, or spend too much time talking about the nitty-gritty of our technical implementations; if you want to learn more about NMEA 2000 and boat-hacking, definitely get in touch though!

But first...

### two quick asides

There are two important things you should know about Summer Games if you want to intern at Booz in the future.

First, projects aren't standardized across the entire company; rather, they're picked by the regional offices and the teams that support them. This means that the experience interns get will vary *wildly* based on what the project is. Some offices focus mainly on strategy and management consulting, which means that the teams don't actually engineer a final product: instead, they'll create some "methodology" (think of agile or lean software development). Other offices were more focused on implementation work, like mine: the El Segundo office does the technology portion of management and technology consulting, competing on aerospace contracts with the other big boys in LA (Boeing, Northrop, Raytheon, BAE, Aerospace Company, etc.). If you're considering interning at Booz, make sure you research the types of work that your local office does, and ask your interviewers about the types of projects you might be working on - you might not get a project that fits you!

This gets compounded by a hiring style choice, which affected my team. At the El Segundo office (and it looks like at most offices), hiring is mostly based on a willingness to learn and good teamwork skills, rather than raw technical skill or relevance to project; if you remember, I wasn't asked any technical questions in my interview. That means you'll have a team that can adapt and learn quickly, but might not have the knowledge-base or technical skills that match up with your project. For example, both of the projects at my office were basically just software engineering. However, less than half of our interns were CS majors, and I was the only person with software engineering experience on my team. On one hand, this gives lots of opportunities to learn and grow, but on the other hand, this can make working on a project extremely hard. More on that later.

## starting up

I should clarify something that's slightly confusing. Summer Games is ten weeks long, but I only worked for eight. This is because of UCLA's quarter system, which has weird start and end dates for terms compared to most other North American schools (which is quite frustrating for internships). Three of our team members went to UCLA; that meant for the first two weeks of our internship, the other two teammates were by themselves, working hard on set up work and onboarding on the internship. I'm grateful that we didn't have to do all of the set up work, but I also feel bad that we didn't contribute to it.

On top of that, it put us on a clock. Going in, the pressure was already on, and we had no time to waste.

Before you tackle any problem, you need to understand it. "Hacking into a boat" is a pretty vague statement, so let's get more specific. Pirates, human traffickers, and drug smugglers probably don't have large oil tankers or military-grade battleships <sup><small>[citation needed]</small></sup>. Rather, they'll use small to medium-sized ships, often called "pleasure vessels" - a term that's very not-fun to say - which narrows down the scope of our target system.

Luckily, devices on almost all pleasure vessels employ one of two communication protocols: NMEA 0183 or NMEA 2000. They're both closed-source protocols established by the National Maritime Electronics Association (NMEA), and virtually all major players in naval electronics (Raymarine, Furuno, Garmin, etc.) use either standard, or both. For quite a few reasons (the most important being ease of use with existing Booz Allen infrastructure), we decided to pursue exploiting NMEA 2000.

What does hacking mean? What would we actaully do? Initially, we decided that our goal was to spoof the onboard GPS of the ship (i.e. send some fake signals that look believable). Is that useful? To be fully honest, not really - but more on that later.

## getting our bearings

We hit the ground running. On the first day, we were already able to decode Arbitration IDs (a part of a packet that tells you where information comes from) in NMEA 2000. By the end of the first week/beginning of our second, we were able to fully decode the relevant information we'd need to spoof the ship's GPS, and could encode and send our own data. Functionally, we had hit all of our targets, in about a seventh of our internship.

There are a few ways you can interpret this "success". To some extent, it gets you cocky: we've completed the goal of the internship, which must mean that we're super smart! But I think a more realistic understanding is that we were bad at setting reasonable goals. Part of this is a lack of familiarity with the rigour of the system - boats are significantly easier to hack than you might think - but in some sense, we should've familiarized ourselves with the system *before* setting up our goals. I think this did impact our team's attitude towards the internship, and the quality of our final product.

The next two weeks were spent refining our solution. Our original method of spoofing involved flooding the system with packets, which isn't discreet at all. So, we discovered a way to "turn off" other devices, and then seamlessly put in our own data; if you weren't looking at the network traffic at the exact moment that this happens, you wouldn't think that anything happened at all!

In addition, I wrote lower-level code with less spaghetti. I programatically constructed NMEA packets byte by byte, which gave me more control over exactly what was in the data. I sent and received packets through sockets rather than relying on some library, so I could better see what was happening and have more performant code. And, I dealt with packet timing and multi-frame packets (both comparatively unimportant technical details) more elegantly.

I usually don't write much code in C, so I did like that I was able to push my CS boundaries. Still, the code itself wasn't too complex - once you get over the knowledge barrier, the innate insecurity of the system makes life pretty easy.

## the office

As we got working, our office did a great job welcoming us. Team lunches, bonding activities, meeting senior leadership - the El Segundo team definitely took time out of their day to make sure that we got a good impression of Booz Allen (which is what you should do with your interns). They invited us to stargazing events, mixers, rock climbing - the full range of stuff that the employees do together. Genuinely though, it seemed like a good place to work - and not at all the cutthroat unfriendly consulting environment that I imagined.

Plus, Booz Allen has this policy called "dress for your day" that's a lot more important than I thought it was. Basically, you only dress up for clients - other than that, just be presentable and ready for whatever you'll need to do that day. In the hot LA summer, I was super appreciative that I didn't have to wear a suit every day (even though I did always wear a dress shirt).

And, we had other perks that full-time employees had too. One was access to a wealth of online resources - I took a data science class on Udemy that Booz paid for - and access to a pretty large network of comparatively smart people.

Also, they had free coffee 👀👀👀.

## more features! more things!

As our team got better at working together, we were able to implement more features. Moving the rudder, changing the date & time, and messing with other real-time data and controls was very simple - it was just a task of figuring out how the information was stored, and then replicating it with what's essentially a glorified replay attack.

In addition, we realized that a command line utility running on a Pi probably isn't the sexiest thing to present to a group of managerial executives. So, one of our mechanical engineers CADed a case and created a super cool rendering of our actual device, and I set out to make a GUI to interface with our embedded system. Building that GUI was a callback to my web/app development days: I was easily able to slap one together with React & Electron (and in this case, Electron is justified because I needed it for TCP). Not too intellectually challenging, but still a good project to practice on.

We were also able to spoof AIS messages, which is how ships communicate their positions with each other. There were some previous capabilities at Booz (and online from open-source communities), so we were able to build on top of that to create ghost ships on the GPS. And, we were able to "hack" a mock fire suppression system, though it was woefully insecure.

In hindsight, these features are **significantly more useful** than spoofing the GPS of the ship. In fact, they often introduce brand-new attack vectors, which gives our system more resiliency. I wish that we had better prioritized our goals and figured out exactly what we needed: not only because it would've given me peace of mind, but also would've let me write better and more organized code, and a product that works seamlessly (rather than additions being tagged onto the end).

Those three-ish weeks flew by pretty quickly - I was constantly coding and hard at work, which is a special kind of addicting, and I simultaneously juggled other responsibilities of being an "adult" (whatever that means).

## presentation prep

Then, we were cut short - the Booz team needed to take our simulation gear and do some actually important things with it. So, we packed up all of the boat equipment, and started working on our slide deck.

I've got to say, I hate *making* presentations. I don't hate giving presentations - in fact, I actually really enjoy giving presentations - but the process of iteratively creating a 20-slide PowerPoint over two weeks is... not appealing. I don't think I've ever really had a passion for marketing or business analytics - I don't find those to be particularly stimulating or fun - but our entire team switched gears and made a polished ten minute presentation.

And boy, did we practice. At this point, well over a month from now, I still have the script for our presentation ingrained into our head. The rest of the office was great in supporting us: we gave our presentation to tens if not hundreds of employees in our office, parsing through all of their (sometimes conflicting) feedback and slowly improving our presentation. We got a lot of great feedback, and at the end of it, I think we had a much better, clearer presentation; it is hard to explain how boat hacking works in ten minutes! However, our team morale was definitely low, and I wasn't really feeling the same kind of excitement for our last weeks in the office.

## DC & McLean

Then, we flew to Virginia! Overall, I really enjoyed this part of the internship. Booz Allen put us up in a hotel, and invited us to their headquarters with all the other interns. We got to meet lots of different people from all over the U.S., but also had enough time to chill for a bit and mentally prepare ourselves to present.

And, we presented! In my opinion, I think we did alright: nothing to blow them out of their socks, but a clearly professional and well-rehearsed presentation. We also got to listen a few other teams' presentations, and they were generally... hit or miss. I will say, I think the project that you're assigned has a significant, but not all-commanding impact on your presentation; we saw some groups with sick ideas and awful presentations, and some groups with... no ideas or work but a solid slide deck.

At the end of the day, we didn't win anything, which is fine by me. Mostly because the eventual winner was the other team from my office (they did some cloud computing visualisation frontend work)! It was a great finale to an overall solidly enjoyable experience. We did a bit of sightseeing, and said our goodbyes - we were done the internship!

## NYC

haha sike

Booz Allen runs a hackathon called Hack the Machine that works with industry and military professionals to hack ... well, stuff. One of the events was maritime security, and our intern team had enough knowledge to help out! So, almost a month after the Challenge Cup and the rest of the internship, about half of us flew to Brooklyn to support this hackathon.

I really enjoyed that too. It was kinda stressful: I worked a 14 hour and 10 hour shift with very, very little sleep, and was constantly running around helping participants hack into boats. But, it was kinda fun: I love teaching people, I love computers, and this is a pretty close middle ground. Plus, I got to catch up with a friend in New York and explore a bit of the city, which is something that I don't get to do too often.

It was a great end to the internship, though also rather unorthodox for how Booz runs things.

## and in hindsight...

I think I'm happy with the overall experience. I got to do some cool stuff - boat hacking is always fun to explain to people - and I got to develop a lot of soft skills along the way.

However, having finished the entire internship, there are a few things that I wish went differently.

For starters, I wanted more technical development and guidance, and I mean this in a few ways. Firstly, the nature of our project (basically a short product development cycle) meant that we skipped *a lot* of things. We didn't meet with clients or anybody who'd actually really use our product. We didn't do much testing, automation, or deployment (which are skills in software engineering that I really want to practice in a professional environment). And we never got user feedback - which I think is probably the most important part of making a product (and definitely consulting).

In addition, I didn't have many opportunities to work with other coding peeps. None of my teammates were CS majors/had software engineering experience, and we didn't really work *with* any of the SWEs at the office. I think really working properly in teams is something that a lot of CS majors don't get experience in: things like code reviews, writing maintainable code, and working on huge projects are things that you don't really get to do at university.

And, as much as agile scrum is an industry-darling, I'm not so sure that it works for everything. For projects like these, it became kind of awkward on execution: we couldn't do user stories because... we didn't really have users. To be fair, we also weren't scrum experts (though I could've gotten a certification!), and I think if we did a better job of being agile (tm), then maybe our product would've turned out better.

## and some other observations

The rest of this stuff didn't fit squarely into the narrative, but there's still a few other things I want to talk about.

One thing is implicit sexism in tech (you could interchangeably use the word "casual sexism" instead). I had the opportunity to talk to several women who were in upper management at the LA office, and they all said that sexism in the office was still alive - albeit much better than it was 10 or 20 years ago. Sexism has still permeated tech, and I have a responsibility to actively push for change. As an intern, there's not really *that* much that I could've done, but you can always do better. And, as I get older (and hopefully do more things), it's something that I should actively be thinking about and working towards.

(as a side note, that applies to more than just sexism: I think tech has many barriers for a wide majority of people. maybe that'll be another blog post)

Something else is that Booz Allen is a pretty welcoming place to work at. Several of the employees were parents of young children, and Booz grants a lot of flexibility in the hours that you work so you can be with your kid - which is great! They were also very big on supporting employees with non-traditional educational paths: people who dropped out and went back, people who started uni a lot later, people who bootcamped, etc. And, they're pretty well-known for being a great place to work for as a veteran, which kinda makes sense: they do a lot of work in the defence industry.

## tl;dr

Overall, I enjoyed my experience at Booz Allen, and I'd definitely recommend it to many people. I learned a lot about working in teams, the professional environment, and government contracting. However, I do wish that I was able to learn more technical skills, and work alongside other software engineers.

Bullet point by bullet point, here's how I'd break it down:

### pros of summer games as a whole

* in general, they treat interns super well, and are invested in you having a good time
* you'll do actual hands-on work, with lots of room to learn - no getting coffee!
* company offers many resources to help you learn (workshops, online classes and certs, employees)
* your project gets a budget for equipment, usually more than you'll need - they want you to make something good!
* company is favourable towards non-traditional interns, such as veterans or parents
* DC trip! all expenses paid! great times!
* dress for your day - you don't need to buy a suit
* free coffee 😊

### pros of the El Segundo office

* office culture is **amazing**: everybody is super nice and great to talk to, and are willing to help out in whatever way possible
* pay is competitive compared to other internships
* the actual office does tons of cool aerospace work
* has lots of things for interns to do: community service, workshops, and star party!
* senior leadership is especially invested in making you feel welcome and learning about your project
* the office commits to helping you with your presentation
* in my year, challenge leaders were stellar
* actually dress for your day
* aerospace games in LA are super fun!
* lots of free food events 😊

### cons of the internship

* **your experience is extremely dependent on what project you get.** you might not get something related to your major at all, and it might suck!
* similarly, **you and/or your team might not have any experience in the field of your project**, which can be very frustrating
* cannot do actual client work, missing out on big part of consulting experience
* you might not get much depth into your project due to the short time-frame: emphasis on MVP
* lots of work done by office/employees is classified/top secret; you won't be able to really learn about what they do
* you don't really work *with* any of the employees, only the interns - little opportunity to develop professional in-team skills
* rapid product development is a trade-off on developing a long-standing product (e.g. no testing, QA, CI/CD for software)
* morally, you might not align with the project you get - more likely here than at a tech company

### personal comments

* as a guy in tech, **i need to my more cognizant of implicit sexism in the industry**
* was pleasantly surprised by the great work culture; subverted my expectations of consulting
* however, i'm not fully convinced that consulting is the play, for a few other reasons
* didn't learn as many technical skills as i wanted to
* agile scrum is a great idea in principle, but very hard to execute fully properly
* important things are wayyyyy too easy to hack
* overall, a positive experience, and one i'd recommend (with some caveats)

And, of course, I learned what it meant to have a Champion's Heart.

Until next time!
