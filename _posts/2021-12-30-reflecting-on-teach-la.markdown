---
title: 'Reflecting on Teach LA: Unprecedented Times and the Dev Team, Again'
date: 2021-12-30 02:34:50 Z
categories:
- impact
author: 'association of computing matts, teach la'
layout: post
---

## Preamble

I want to spend a bit of time reflecting on my time running [ACM Teach LA](https://teachla.uclaacm.com/). It would not be far-fetched to say that this has been the most impactful experience I have had at UCLA.

This post is long overdue. It's very hard to explain to people why I've spent such a large chunk of my life on a club: I'm not paid, there's no clout, and clubs shouldn't be stressing people out! I want to write down just how much of a toll this club took on me, but also how much it gave me.

This is a successor to my 2020 rant, [Reflecting on the Teach LA Dev Team]({% post_url 2020-06-27-reflecting-on-tla-dev-team %}). I imagine this will be the second out of a three-part series on my time at ACM.

I also have a lot to say about this topic. So fair warning: this is not an [on conciseness post]({{site.baseurl}}/specials/concise21/), and this is going to be rambly. I'll try to provide some checkpoints and tl;drs when I can; I'm not writing this in one sitting, and you should feel free to read it in as many sittings as you'd like.

Ready?

## Table of Contents

* [Preamble](#preamble)
* [Table of Contents](#table-of-contents)
* [Context](#context)
  * [Some Important Words](#some-important-words)
  * [The Past, Abridged (2018-2020)](#the-past-abridged-2018-2020)
* [The Play-by-Play](#the-play-by-play)
  * [Spring Quarter, 2020](#spring-quarter-2020)
    * [Assembling a Board](#assembling-a-board)
    * [Initial Pandemic Response](#initial-pandemic-response)
    * [Some Transparency Work](#some-transparency-work)
    * [React Native](#react-native)
  * [Summer Quarter, 2020](#summer-quarter-2020)
    * [Learning Labs Crash Course](#learning-labs-crash-course)
    * [CityLab, Cipher Salad, and Passworks](#citylab-cipher-salad-and-passworks)
  * [Fall Quarter, 2020](#fall-quarter-2020)
    * [The Dev Team, Again](#the-dev-team-again)
    * [JEDI](#jedi)
    * [Internship Recruitment](#internship-recruitment)
  * [Winter Quarter, 2021](#winter-quarter-2021)
    * [Dev Intern Training](#dev-intern-training)
    * [QWER Hacks](#qwer-hacks)
    * [Succession and the Wrap-up](#succession-and-the-wrap-up)
* [Large Thoughts](#large-thoughts)
  * [On Running Dev Teams](#on-running-dev-teams)
    * [Pushing People](#pushing-people)
    * [The Banking Model of Education](#the-banking-model-of-education)
    * [Creating and Maintaining Projects](#creating-and-maintaining-projects)
  * [On Pedagogy and Teaching](#on-pedagogy-and-teaching)
  * [On Community Building](#on-community-building)
  * [On Writing](#on-writing)
  * [On Burnout](#on-burnout)
  * [On Succession](#on-succession)
  * [On Doing What I Want](#on-doing-what-i-want)
* [Learned Lessons and Regrets (tl;dr)](#learned-lessons-and-regrets-tldr)
  * [Teaching](#teaching)
  * [Dev](#dev)
  * [Everything Else](#everything-else)
* [Closing Thoughts](#closing-thoughts)
  * [Learning Labs](#learning-labs)
  * [Where I Am Now](#where-i-am-now)

## Context

I'll spend a bit of time summarizing what my previous two years at Teach LA looked like. If you've read [Reflecting on the Teach LA Dev Team]({% post_url 2020-06-27-reflecting-on-tla-dev-team %}) (or are in Teach LA, ACM, etc.) much of this may be review.

### Some Important Words

I often speak from my little tech bubble, so I want to make sure I explain some key notes:

* [**ACM at UCLA**](https://uclaacm.com) is a large computer science club on campus at UCLA. It's the largest one by membership, and is split up into several "committees", each of which focuses on a specific topic. While not super relevant to this post, I'm currently the president of this club. I'll colloquially call this *ACM* from now on.
* [**ACM Teach LA**](https://teachla.uclaacm.com) is a commitee of ACM @ UCLA specifically focused on computer science outreach. Its main focus is providing equitable access to computer science classes in the Los Angeles area. I ran this club from 2020-2021. I'll colloquially call this *Teach LA* from now on.
* **ACM Teach LA's Dev Team** is a part of ACM Teach LA that writes educational software. This was how I first joined Teach LA, and the focus of [my last reflection]({% post_url 2020-06-27-reflecting-on-tla-dev-team %}). I'll refer to this as the *Teach LA Dev Team* or the *Dev Team* for short.
* A **director** or **officer** is someone in Teach LA who holds a leadership position. Most members in Teach LA - "**general members**" - can come and go as they please. More broadly, **officers** in ACM hold leadership positions, and are appointed or elected.
* In our context, **interns** will refer to ACM's recruitment process. Interns are not paid.
* **Learning Labs** (or LLs) are interactive web modules designed to teach complicated computer science topics in an experimental way. This was an idea I've always wanted to execute on, but never have fully realized.

### The Past, Abridged (2018-2020)

*A rant-ier summary is [in the previous post]({% post_url 2020-06-27-reflecting-on-tla-dev-team %}).*

I joined ACM Teach LA in the fall of 2018, my very first quarter at UCLA. At the time, I wasn't particularly drawn to ACM or leadership; I just wanted to write some code to help kids learn better. I didn't even participate in Teach LA's teaching program (there was a class conflict); instead, I taught with [BEAM](https://beam.ucla.edu/). Over the next two quarters, I contributed to the [online code editor](https://editor.uclaacm.com) in a tight-knit team of 6. I picked up a bit of React and Redux experience, learned some CI/CD, and most importantly, *had a bit of fun*. It was a low-commitment but fun time.

Then, our director graduated, and someone needed to fill the void; I was voluntold. As much as running the dev team wasn't something I was immediately passionate about, I felt that I needed to do my new role justice. I also saw this as an opportunity to shape the dev culture at UCLA. With that in mind, I dramatically shifted the dev team's role. Three big things:

1. By far the most impactful was our **no experience required mantra**: accepting all of our applicants, regardless of prior experience, and guaranteeing them some sort of training path. At the time, this was completely unheard of. This also ballooned our team to 20+ devs.
2. I kicked off our first non-editor project, the [Gradient Descent Visualiser](https://uclaacm.github.io/gradient-descent-visualiser/). This quick-and-dirty teaching tool became the first of many **Learning Labs**, which defined my next year running Teach LA's dev team.
3. I started bridging the gap between our teaching and dev teams. At the time, that just meant having a few teachers join us every now and then. In addition, I taught a class, and was able to provide input in the opposite direction.

At the time, I think I really enjoyed the position. It came with quite a few newfound stressors (in particular, teaching *a ton* of new people, and failing quite a few of them). I left the role a bit unsatisfied - in particular, with a few failures that I hyperfixated on - but still viewed it very positively. At the end, I was really happy with the potential for impact we had: our novel recruitment process and some of the code we were just getting started on had superstar potential.

In particular, I'll talk about "no experience required" quite frequently.

In March 2020, two big things happened:

1. I became the president of ACM Teach LA, and
2. You may have heard, but a pandemic really took off.

That's where we'll start the recap.

## The Play-by-Play

I'll try to give a relatively objective review of my time as President of Teach LA. If you want a real tl;dr, you can [read the blog post I wrote for Teach LA](https://teachla.uclaacm.com/blog/reflection/2021/03/28/board-reflections/#matt) instead.

*I also think this is probably the ... least relevant part of this post? So [skip ahead to my reflections](#large-thoughts) if you'd like.

### Spring Quarter, 2020

**tl;dr: we picked our new board and cut down on classes/dev in response to the pandemic. I started brainstorming a new class.**

Like almost any other institution, we definitely struggled with COVID-19 and virtual instruction. And, like most clubs at UCLA, we effectively shifted immediately to Zoom, with a little bit of Discord sprinkled in.

Immediately after I won the election, we had virtual finals and then spring break. Like most people, I had imagined that the stay-at-home period would only be a couple of weeks, maybe a couple of months at worst. I stayed in Los Angeles for the break, moving into an apartment when I learned that spring would be virtual.

#### Assembling a Board

The first task for Teach LA is to assemble a new board. For context, the board consists of all the directors/officers who lead the club: by reaching out to schools, leading classes, running events, managing the dev team, and other admin work!

I elected to let all of our returning board members retain their current positions, if they wanted to. This was only four other people! Bonnie (our old outreach director) returned as an advisor, as did Arjun (our old logistics director and current ACM AI outreach lead). Malak reprised her role as a school lead but passed on the torch for running special events. Shane initially wanted to return as curriculum director, though he had to withdraw as the quarter went on. That is to say - I had quite a few returning members, but we were a small team.

I really wanted to expand our board. I had ambitions to ramp up our pedagogy and curriculum quality, put on more extravagant events, and let the dev team shoot for the moon with these new learning labs. So, I did a huge recruiting drive. We ended up taking quite a few people:

* Chloe, Nikhil, Keertana, Kaitlyn, and Nina went from being interns to fully-fledged officers; they worked on outreach, curriculum, and special events (3x) respectively
* Frequent members Sophie, Regina, and Leo joined our board as well; they worked on logistics, special events, and the dev team respectively
* Chase and Helia were relatively new but joined us like old friends; they ran the React Native high school class (which I'll talk about later) and the Python videos team. They technically joined us much later, closer to the summer.
* On a whim, I also appointed Nikhil and Keertana as our social chairs.

Our recruiting process was relative standard. I included all of our returning board members in the decision process. We put out an open call for applications with a set of predefined roles. Then, we interviewed everyone who applied, balancing general mission-related questions with role-specific questions. Then, we all picked - and picked our board unanimously!

We only recruited internally (i.e., through people who were already in ACM Teach LA). In hindsight, I'm not entirely sure if this was the right call. It did limit our selection of candidates (we accepted almost everybody who applied). At the same time, I'm proud of our board, and I don't have any regrets about the selection process.

#### Initial Pandemic Response

As we assembled our board, I also had to decide what we would do during the pandemic. Since all of our classes were shifting to Zoom, I wanted to see if we could do the same with Teach LA.

Turns out, this is pretty hard. At the time, the LAUSD (the Los Angeles Unified School District) was woefully unprepared for the pandemic. Not all of the kids we taught had computers or stable internet at home. Unlike UCLA, the LAUSD was slow to shift everything to Zoom and complete learning management systems, especially for young kids (can you imagine giving Canvas to a fourth-grader?). Many schools relied on Khan Academy almost exclusively as everyone scrambled to figure out what to do.

This is, of course, also knowing that we weren't trained teachers, and had no idea how to run classes online.

As a result, our teaching programs definitely suffered. I would say that success was correlated with age. We completely dropped our program with elementary school students, who really struggled with the shift to virtual learning. We had pretty poor attendance and engagement with our middle school students, even though our instructors put in stellar work in transitioning to online instruction. Our high school course at NHHS faltered a bit, and I never really got to say goodbye to the students as they moved on. At the same time, we were equally as confused and tired - overall, it was a tough situation to navigate.

Our development team didn't do too much better. Leo took to running our dev team like a fish to water, and really put in quite a bit of effort to run fun, engaging meetings. That being said, we were all tired from a newfound Zoom fatigue, and finding time for extracurricular software development was tough when we were barely scraping by with our classes. As a result, editor work stalled, and the two learning labs I soft-started in Winter - Network Tarines (on computer networking) and Cipher Salad (on cryptography and ciphers) - both faltered.

As much as this sounds negative, I was pleasantly surprised. If you're reading this in retrospect, **I cannot highlight how strange and stressful the initial throes of the pandemic were for students**. Virtual instruction was so new, and professors were struggling (often not recording classes, not knowing how to use cameras, or unsure how to grade online tests). Social activity was at its absolute trough, and morale was through the floor. I'm honestly impressed that anybody still put aside time to come to our club; I know many other clubs cracked at the seams, never to return. And, while the outcomes weren't amazing, I'm immensely proud of the quick transition we made to virtual instruction, and how we kept a semblance of normalcy for the kids we worked with.

We made it through spring quarter. For me, that was a huge success.

#### Some Transparency Work

A minor leadership characteristic I value is organizational transparency. This manifests itself in two ways:

1. Anybody inside our organization should understand why I made a decision. We should never be making decisions behind closed doors.
2. Anybody inside or outside our organization should know as much about what we do, within reason. There should be an explicit reason why *not* to share something, rather than creating a requirement to be transparent.

I think this is particularly important in running a nonprofit (which Teach LA functionally is).

In pursuit of this goal, I did some writeups:

* [Equity, Diversity, and Inclusion in 2019-2020](https://teachla.uclaacm.com/reports/2019-2020-edi), which summed up our EDI work for the year and set some goals for the future
* [Financial Accountability in 2019-2020](https://teachla.uclaacm.com/reports/2019-2020-finance), where we published our budget and funding sources

I think both of these are relatively uncommon for student organizations to do, but rather common for "real" nonprofits.

I enjoyed writing these reports out, and I think they're pretty important - even if few people read them. Writing the EDI report gave our team quite a bit to reflect on, and set some sort of direction for next year. Financial accountability forced us to actually write down all of our financial documents (which is VERY uncommon with student orgs), and I hope levelled the playing field for other outreach orgs looking to learn more about what budgets should look like.

#### React Native

Right before the pandemic, Facebook's Open-Source Advocacy/Education team reached out to me about teaching a high school class on mobile development with [React Native](https://reactnative.dev/).

This was *really* exciting:

1. Mobile app development is a great topic to teach students, since the feedback loop is immediate and the impact/application is very clear.
2. React Native is a new technology, and has very transferrable skills - particularly to general web development.
3. React Native solves one of the largest gripes with teaching mobile development, which is relying on student equipment (ex you need a mac and an iPhone to teach iOS dev). You can run React Native in a browser.
4. Facebook reached out to us! Isn't that big?

I was really eager to get this started, with no regard to how hard this might be. I agreed to get started, and wrote a tentative curriculum plan. At the time, I thought I'd spearhead the course myself. After all, we'd return to in-person schooling in the fall, and it'd all work out. Right?

Right?

### Summer Quarter, 2020

Clubs typically go inactive over the summer, but I had a lot of work set out for me. I'll go over two pretty big chunks in-depth.

*Other* than those chunks, I had my hands in a few, not-so stressful pots:

* I did every single virtual New Student Orientation (NSO) tabling event. This definitely helped with advertising our club, but also brought me closer to ACM as a whole. Also panelled for a few other new student events (like Discover Engineering).
* In anticipation of a likely virtual fall quarter, we kickstarted the "Python Video Squad", to develop a set of asynchronous Python video tutorials. Helia led this initiative!
* Due to some logistical barriers, development on the React Native course stalled. This was not-so-great for a couple of reasons. Still, I started to architect out [the first few lessons](https://github.com/uclaacm/react-native-course-20-21)!
* In the background, I added many more pages to our website to describe our dev team, how to join the club, and other important information - surprisingly something that not all clubs have!

Okay, let's talk some dev team business.

#### Learning Labs Crash Course

I had high ambitions for learning labs. Part of that included creating a scalable training system; not only did I not enjoy the calibre of training I did last year, but it also took an *insane* amount of time for me.

Beyond that, I also had a couple of ACM AI Outreach officers interested in developing a learning lab for our high school class; in particular, one to visualize convolutional neural networks (CNNs). We wanted to wrap up the learning lab over summer/fall, and the team didn't have much web dev experience; so, we needed to train them.

I wanted to knock out these two birds with one stone, and my solution was the [Learning Labs Crash Course](https://github.com/uclaacm/learning-lab-crash-course-su20). Essentially, a set of videos that should teach an interested developer *all the skills* to work on most learning labs, assuming they have never done web development before. This meant I needed to cover:

* HTML & CSS (and not just the basics)
* JS, and ideally well
* we chose to teach React, though this is not strictly necessary; this cemented us as a React shop
* little bits of design, backend, testing, databases, devops, etc.

In hindsight, I could've probably scraped together a training plan from existing online resources. At the time, I was hell-bent on doing things *my way*, and focusing on what I thought was important. Beyond that, I wanted to lean on the strengths of Leo, my dev team director, and some other collaborators - two designers to talk about Figma and web accessibility, respectively.

And so, I did it. This was an arduous task. We easily hit over **20,000 words** of content (depending on how you count) and recorded **18 videos** over the span of two months. We built in two side-tasks, a personal portfolio and the classic to-do list, and ran office hours + consulted on the CNN learning lab.

This effort completely drained me and all of my free time (I was working for AWS over the summer). I didn't realize it at the time, but this would be some of the most important work I had done at Teach LA. We proceeded to use it to train a revolving door of 50+ interested dev team members over the next two quarters; I got emails and tweets from people at BU, Waterloo, and UofT saying that they found the material helpful. And, it set a precedent for a very hands-on training and support system; something that still defines Teach LA to this day.

If you're interested, you can view the [GitHub Repo](https://github.com/uclaacm/learning-lab-crash-course-su20), the [YouTube playlist](https://www.youtube.com/playlist?list=PLPO7_kXilXFa6YdXxn5oln1gagcqnFI4l), or the finalized [CNN Learning Lab](https://nofilter.uclaacm.com/).

#### CityLab, Cipher Salad, and Passworks

Simultaneously, the summer was also the first opportunity to put learning labs to the test on a larger scale.

Rewinding a bit; in winter 2020, CityLab at UCLA (the biology outreach org, not the lab) reached out to us about running a collaborative event. The goal was to incorporate their style of teaching with our computer science curriculum. We initially planned it for the spring, but then COVID happened; so, we had to rapidly pivot.

I pitched the idea of a "Cyber Day", where students would learn about cybersecurity from a technical (e.g., how does password-hacking work) and non-technical (e.g., what are the ethics behind cybersecurity laws) perspectives. We'd blend together CityLab's storytelling teaching style, Teach LA's CS knowledge, and crucially, Teach LA's learning labs.

We agreed, and so we got to work. I wanted to complete two learning labs:

1. Passworks, an exploration of password security, brute-force attacks, and social engineering;
2. Cipher Salad, an explanation of historical cryptographic ciphers and their modern-day equivalents.

Both of these were in part motivated by past experiences I had teaching, and in part from other driven team members. Each was ran by a small team; Alyssa, an original Teach LA dev team member soft-PM'd and created content for both projects; Jamie, another original dev team member took on Passworks by herself, while Cipher Salad was the project of Lisha, Janis, and Rachel (at the time, relatively new members).

I'll be honest - I didn't get to provide as much support as I wanted to. I helped with administrative burdens, occasional content/pedagogy work, and wrote a couple of features for Passworks. But, I never dove deep into the design, did extensive user research, or architected some really good code.

That being said, I'm incredibly proud of the teams, and they delivered. We wrapped up both learning labs the week before the event, and iterated with CityLab; on the day-of, I attended the entire 3-hour session and answered questions from the participating students.

At the end of the day, gathering rigorous feedback was hard, but qualitatively we got some pretty great responses from students; several asked for more (which unfortunately, we didn't have). And, for a classroom experience that was typically just going through powerpoint slides and rigid learning modules, it was refreshing.

There's much more to say about this event. I'd encourage you to check out both [Cipher Salad](https://ciphersalad.uclaacm.com) and [Passworks](https://passworks.uclaacm.com)! Beyond that, I also encouraged the teams to write about their process; check out posts written by [Jamie on Passworks](https://teachla.uclaacm.com/blog/dev/2020/09/23/the-making-of-passworks/) and by [Janis, Rachel, and Lisha on Cipher Salad](https://teachla.uclaacm.com/blog/dev/2020/10/13/ingredients-of-cipher-salad/). There's also an [event summary page](https://teachla.uclaacm.com/citylab-cyber) on our website.

### Fall Quarter, 2020

**tl;dr: Teach LA became really popular, I had to become the interim dev team director, we placed a huge emphasis on diversity and inclusion, we recruited "interns" for the first time, and I failed to juggle everything.**

And with that, I moved on to Fall Quarter. Fall is busy! Individually, students have to get back into their classes and start recruiting (if you're on a tech timeline). Clubs have to juggle many welcome events, dust off cobwebs from summer, and recruit first-years/new transfers.

My primary (and in hindsight, somewhat naive) goal was to grow the club significantly. I thought that our biggest problems were a lack of personnel, and that we could fundamentally change the culture of CS clubs at UCLA. With that in mind, I doubled-down on my **no experience required** mantra and brought it to the entire club; after all, we should be good at teaching.

I said "no experience required" so frequently in the [ACM General Meeting](https://www.youtube.com/watch?v=_HJA0QQP80I) and the [Teach LA General Meeting](https://www.youtube.com/watch?v=z1tfsmsVTH4) that people in our Discord started making memes about me. But, it worked; even with the "pandemic boost" of bored first-years looking for something to do, interest demolished any of our projections; we had over 100 GM attendees and 50 people interested in the dev team, both double of our attendance from our previous year.

While that was going on in the background, we started teaching our classes. Like spring, they were fully virtual; but, we had a bit more time to adapt to online instruction, and tried to blend in videos (go Python video squad!), interactive lessons, quizzes, and discussions in-between our typical class content. I still supported our AI & ML course at North Hollywood High School, though I wanted to let our new officers shine. We definitely got better responses from students, but at the same time, everybody seemed burnt out.

And then, ...

#### The Dev Team, Again

Due to some unforseen circumstances, Leo stepped down from his role as the Dev Team Director (to just running our editor project) after we had onboarded many of our members. Nobody else was interested in picking this up half-way through the quarter. So, I had to make a tough judgement call:

1. scale-down the dev team to <10 people, who can run relatively autonomously; scrap all of our training plans, or
2. run everything myself

Now, every single person I knew was telling me to let the dev team scale-down. Running it myself would not be sustainable, it would stretch me thin, and I just wouldn't do a good job. Almost every single rational person would say to take option 1.

And so, I took option 2.

In my defense: I held the Teach LA Dev Team to heart, and I *really* wanted Learning Labs to kick off. I had thought, "I did a bunch of training videos, I'm sure it'd work out", and figured that I could work my way through things.

But oh boy, was I wrong.

I realized how nebulous this role was as I did it. Looking back, I had maybe 5 key responsibilities:

1. Being the "face" of the dev team. This means running all of our meetings, doing fairs, and checking in on people frequently.
2. Running training. Against advice, I did not just make people watch videos; I ran live training sessions, mini-trainings in meetings, office hours (in which people actually showed up), and onboarded new people!
3. Managing our projects: coming up with ideas, recruiting team members, supporting PMs, etc.
4. An insane amount of code review, since almost all of our team members were brand-new, and most of our returners didn't feel comfortable reviewing code
5. Running our website, since we didn't have a defined person to do that

Each of these easily took 4+ hours of my week. I'm not kidding when I say that I spent 20-30 hours a week, on average, for this club. It's insane doing all of this for 50+ people. It's even more insane considering that I was doing it mostly alone, with a couple of PMs to run projects. This one decision broke me as a person; more on that later.

We did start three learning labs in fall quarter:

* [Bias By Us](https://github.com/uclaacm/bias-by-us), an LL focused on bias in machine learning. This one is special because the three core members were all first-years who reached out to me about doing this independently.
* [Cookie Jar](https://github.com/uclaacm/cookie-jar), an LL on how browser cookies work and how you can interact with them.
* [Selector Safari](https://github.com/uclaacm/selector-safari), an LL inspired by [Flexbox Froggy](https://flexboxfroggy.com/) and the like to teach CSS selectors. I was *super* excited about this idea, and I think it's one of my best ones.

None of those learning labs are complete as of writing (a year out), which was not the original intention. I'll spend a bit more time analyzing what went wrong and what went right - both in terms of the LLs, and the dev team as a whole, in the [Large Thoughts](#large-thoughts) section.

#### JEDI

We also joined JEDI, a new "moonshot" initiative within ACM. JEDI (Justice, Equity, Diversity, and Inclusion) was meant to make ACM more diverse and inclusive from the inside: ensuring that our events, recruitment, internal processes, and everything else was as fair and inclusive as it could be! I was (and still am) really excited for JEDI, so we joined in full force. It's a perfect mission fit for our goal of making computer science education more accessible. Plus, JEDI was led by our very own Arjun - how could we not get involved?

In the fall iteration, we nominated four officers to be JEDIs; they identified sets of goals to work towards, and then supervised or led actionables to make them happen. I'm quite proud of the actions that our JEDIs took: they ranged from the little things, like creating a "small victories" slack channel to better celebrate our successes (and create a more welcoming community), to bigger efforts like redesigning all of our slides to be more accessible or pushing for all of our instructors to use inclusive language and examples.

I won't touch on JEDI too much for the rest of this post, but there's some great information about it on [the current ACM website](https://uclaacm.com/jedi) (which I made!), including a set of blog posts Arjun wrote about the entire experience. All in all, I think JEDI was a net positive for Teach LA, and I'm glad we put justice, diversity, equity, and inclusion to the forefront of our mission.

#### Internship Recruitment

We also joined ACM's ["Internship Program"](https://uclaacm.com/internship). This is ACM's primary way of recruiting new members; after a set of written applications and interviews, prospective ACM officers join in the middle of fall quarter and onboard throughout winter. By spring, most committees "promote" their interns to be fully-fledged officers. Admittedly, "internship" is a bit of a weird name, since interns aren't paid, and we're a club.

In the past, Teach LA did not (really) participate in the internship program; our model of "anybody can join" was enough of a recruitment drive, and growth wasn't necessarily part of our mission. However, I wanted to change things up - mainly for two reasons:

1. I wanted to bring Teach LA closer to the rest of ACM, which includes the recruitment process
2. I wanted to see if there was a way for us to "fast-track" leadership development, and spend more time diving into the "weeds" of pedagogy, software development, and management

We'll touch on this later, but I never felt like I fully realized the second goal.

Kicking off our internship drive was very challenging for me, since I was never an intern myself (ACM actually forgot to onboard me) and we had no materials prepped. Luckily, Bonnie was a huge help, and together we devised a complicated set of interview materials, including:

1. A set of written application responses
2. A (somewhat strict) rubric on grading applications, including a double-blind process
3. A consistent set of interview questions
4. A data pipeline to tie all of these together; a loose amalgamation of scripts and extensions

We went hard at Fall GM and in marketing the internship program, and we got *way* more applicants than we anticipated. Originally, I was thinking that we'd cap out at 30 or 40 interested people; we got **71 applicants**! I decided to invidually review all of our applications (which was ... *very stressful*, to say the least), and deciding was **so hard** - I wanted to take everybody! Eventually, we had to narrow the field down to 21 candidates, and took 12 people. I really liked each of the interns that we took, and I'm so glad they joined our team. This was definitely one of the most fun highlights of the year, even if it was stressful. I do have some regrets on how we went about this - more on that later.

There's a bit of a story involving negotiating ACM interns, but I'll keep that private for now ;)

I'll also touch base on this more during the winter quarter section!

If you're interested in a more unbiased summary of the internship process - including some statistics - I would check out the [blog post Bonnie, Sophie, and I co-wrote on it](https://teachla.uclaacm.com/blog/internship/2020/12/16/internship-retrospective/)!

### Winter Quarter, 2021

**tl;dr: our classes chugged along, though React Native faltered. I ran dev training for our dev interns, and continued juggling all the dev-related responsibilities. I then handed things off to Sophie!**

Winter came and went, and nothing too big changed. We were still online, as were our classes. Attendance slightly petered out, as people became more burntout from the pandemic - which is completely understandable.

I think the class that struggled the most was React Native, not particularly in fault because of them. The class got moved around, kids were struggling in their other classes and the teacher needed to reclaim the class time, and teaching kids React Native is hard!

Our speaker series and curriculum teams (and interns) otherwise mostly chugged along. I had each cohort (curriculum, speaker series, dev team) of interns work on a project; the curriculum team took on [an intro to Java](https://github.com/uclaacm/TeachLA-InternProject-GreenfootJava_IntroDemo), the speaker series team worked on Day of Code (an event in collaboration with ACM-W that is supposed to bring kids to UCLA), and the dev cohort worked on [Buffer Buffet](https://bufferbuffet-simulator.uclaacm.com/), an x86 simulator designed to make CS33 easier. At the end of the quarter, they presented their work, and I really enjoyed it!

I'll touch on dev intern training in another section, but otherwise the dev team mostly chugged along as expected. I continued running the dev team mostly by myself, sprinkling in small activities (a Kahoot, code-along, writing a test, etc.) at the beginning of each dev team meeting. I can't remember if we pushed any huge features or made big progress on any projects, but I think I was satisfied with the pacing.

I also want to shout out Sophie, our Logistics Director at the time. Since the actual logistics of Teach LA were almost none online, I worked with her to shift her role to more pedagogy-related training. In fall, we debuted a few small teaching activities that all instructors did; in Winter, she really took this as her own initiative and devised a few novel teaching exercises based on her time being a tutor. This was a direction of Teach LA that I was always super interested in - especially seeing if we could innovate and bring cutting-edge pedagogy or popular education into the mix - and I'm happy that she took up the mantle.

When elections rolled around, Sophie was a clear candidate and ran uncontested. Around the same time, I became ACM President in a tight race. By the end of winter quarter, change was coming - but hopefully, good changes.

#### Dev Intern Training

Each cohort that I mentioned was managed by a different part of Teach LA; Nikhil and the rest of the curriculum team took on the curriculum cohort, Sophie took charge on special events & speaker series, and naturally, I took on the dev team.

I had some ambition for dev team training. We only had an hour a week, but I envisioned supercharging our interns - skipping things like basic syntax or things that can be read like CI/CD, and focusing more on the hard parts of software engineering. How do we design maintainable systems? What are unique problems that student software teams face? Are there higher-level programming abstractions that aren't covered in school, but make our lives much easier?

That ended up being asking too much, especially given the time crunch. I also mismatched how much existing knowledge the interns had; in hindsight, spending more time on fundamentals would've made sense. With stronger fundamentals, and especially a focus on teaching interns how to learn themselves, I would've accomplished the same end task while giving the interns a much bigger life skill.

Still, we had some cool trainings! You can view them [in a GitHub repo](https://github.com/uclaacm/tla-dev-intern-training-w21). I split up training for "PM" interns and "dev" interns, but encouraged them to do both; the idea being that interns can pick and choose the curriculum that they're interested in. Special shoutout to Rucha (the ACM President at the time) for running ACM's first-ever "[Intro to PM](https://github.com/uclaacm/tla-dev-intern-training-w21/tree/main/week-2p-intro-to-pm)" workshop, and Karen for reprising her help in teaching Figma & Web Design (over two sessions: [1](https://github.com/uclaacm/tla-dev-intern-training-w21/blob/main/week-3p-designing-with-figma/Figma%20Day%201.md), [2](https://github.com/uclaacm/tla-dev-intern-training-w21/blob/main/week-6p-designing-with-figma-2/Figma%20Day%202.md)).

To put these skills to use, I had the cohort work on a dev project of their choice; after much discussion, they picked Buffer Buffet - a visualizer to help students understand buffer overflow. The base premise is that tools like `gdb` are very powerful but hard to use, and students face a simultaneous learning curve in CS 33: they need to both learn a tricky concept, *and* learn to use new tooling. If we could split that up into two disjoint modules, we can make the problem smaller.

Buffer Buffet was completed, and in one quarter! You can check out the [x86 simulator repo](https://github.com/uclaacm/buffer-buffet-simulator) or [the explainer](https://github.com/uclaacm/buffer-buffet); sadly, we never got to deploy it in a live CS 33 class.

In hindsight, I do wish I ran things differently; to enumerate:

1. First and foremost, teaching people how to learn / unblock themselves. Pays dividends!
2. For the first two weeks, really focus on fundamentals - HTML, CSS, JS, and basic command line skills.
3. Change the curriculum slightly; I think testing was not relevant at all, I wish I did accessibility-first design, and I wish I put more emphasis into processes like code review, CI/CD, and other "non-code" infrastructure.
4. Reduce the size of the project! I think this was a much bigger stressor than I anticipated; while hands-on learning is good, too much too fast is overwhelming.

#### QWER Hacks

Independently, I also continued our co-programming with [QWER Hacks](https://www.qwerhacks.com/), the UCLA-founded first LGBTQIA+ hackathon in the country!

That year, I ran three sets of (virtual) workshops/programs (all on [GitHub](https://github.com/mattxwang/qwerhacks-21-workshops) and YouTube):

1. Intro to React
2. Intro to Firebase (really, Cloud Firestore)
3. Intro to the Education Track

I took some advice and really broke up the workshops into smaller pieces, each one being a video of 5-10 minutes.

I also went all-out with the effort, hammering these out over break. I recorded each workshop multiple times, and edited the takes with Premiere. I wrote a complete script for each video, created code checkpoints, and collated other relevant resouces. All in all, it took me easily over 50 hours to produce, at the end, about an hour and a half of video content and 10k words of writing.

I'm pretty proud of this set of workshops, especially my attention to detail. I got a ton of positive feedback on the workshop track, and we've since then reused this open-source content in other training materials. It wasn't the same as running an in-person hackathon, but it was the best we could have done.

#### Succession and the Wrap-up

I think succession is an unsolved problem for almost every student org. Within the CS & Tech realm at UCLA, I'm not sure if I've met anybody who felt prepared going in to a new role. That may speak more to student orgs than it does to the culture at UCLA or the people.

I wanted to do a good job of the hand-off to Sophie, but at the same time encourage her to do things differently. There's quite a bit of pressure to do things because "we've always done things that way", and I knew I made some mistakes - I didn't want her to have to repeat them!

After congratulating her on her new position, we met a couple of times to hash out what succession would look like. On my end, I prepped a concise document outlining most of my responsibilities, as well as small things I handled that were low visibility. The latter is more important than you might think; often times, club leaders do little things without telling other people, and if that knowledge isn't explicitly passed down, it's lost! On my end, this was things like representing the club to the engineering school, signing up for recruitment events, and lots of small ACM processes (ex finance, managing our directory/slack/discord, etc.). We also spent quite a bit debriefing on the dev team, which Sophie didn't have as much experience with.

In hindsight, I think I did an alright job. On one hand, it was more structure than before.

On the other hand, a few problems.

First, I forgot how much overhead in-person Teach LA was! I never had in-person Teach LA as a president, so some processes slipped my mind: paying for transportation, running in-person general meetings, room booking, and other little things! While I didn't have *that* much experience in this, I had *some*; codifying that and passing it on would've been very helpful.

Secondly, I vastly underestimated how complicated succeeding me in the dev team would be; something that became apparent this year. If you remember, I basically ran the entire team, with Leo taking point on the editor. Under Sophie, they replaced me with a "dev board" of 8 members, each fulfilling one part of my job.

On paper, that sounds wonderful: splitting a gargantuan task into bite-sized pieces. But, I never really formally onboarded or trained people for this role, which by itself was already a problem! The creation of the dev board was a surprise to most, even though it was something on the back of my mind; I should have prepped more for it.

But, beyond that, I took a huge competititve advantage I had for granted. When it's just me, there's no miscommunication, required sync meetings, or ideological tensions; inevitably, putting eight people to manage a system is going to create some overhead. I didn't realize this at all, and didn't mention the importance of syncing training and projects, creating a smooth onboarding flow, etc. While these things seem obvious now, they're easy to lose - especially when being hit with a new position! Because of this, a lot of initiatives and docs were lost, which is a bummer.

And, I think I just underrated how hard everything was. I had a huge advantage in that I built all the systems we ised from scratch (except the editor), so it *all made sense to me*. I didn't ensure that other people had the requisite knowledge to succeed me, and in particular, that *multiple people* knew how to do it. Quite a few of our interns were only with us for a quarter, and expecting them to go from learning a system to managing it with little support is unfair. In some ways, I wish I could've stuck around and helped with the transition more.

I also wish I created a "timeline" of responsibilities of sorts, explaining what I had to do **and when**. Vomiting a ton of information doesn't really stick, and time management is *hard*. I'll do that this year for the ACM president - stay tuned :)

## Large Thoughts

Wow, I can't believe you've trucked through so much writing thus far (or you skipped here). Thanks for bearing with me.

I want to spend this next section reflecting on some bigger processes that I worked on in my time at Teach LA. I have a strong belief that these are lessons that other people can apply to their own student organizations: whether it is a software team, an outreach group, or anything marginally related to technology or student collaboration. I also wish I knew all of these things beforehand; they certainly would've made my life easier.

### On Running Dev Teams

First, big picture: **running good dev teams is really, really hard**. I don't think I even appreciated this until this year, *after* already running the Teach LA dev team for a year.

I think the way to summarize this is to list out some competing goals that student dev teams have:

1. Create good, useful software for end users
2. Give a solid learning experience for student developers
3. Provide students space to grow and gain leadership skills
4. Be fun; not stress students out
5. Develop professional skills and tangible, work experience
6. Let students feel that they're making an impact; move fast enough
7. Be a good experience for *you*, the person running the dev team!

This is not an exhaustive list, but I want to highlight how some of these contradict each other or fly under the radar. For example, software, leadership, and professional skills are much more different than I thought, and teaching some jeopardizes your ability to teach other. Creating good software is very different from making software fast, and either takes time away from developing your team.

Most of my regrets with the dev team come from improperly balancing these goals. I'll touch on three relatively big areas, but this is a topic that I'm still thinking about actively right now.

#### Pushing People

By far one of the hardest things to balance is not being a stressor. A weird consequence of student organizations is that for the vast majority of participants, **their role is not a top priority**; for most, it probably wouldn't be in their top three. This presents a conundrum: you may want more time or effort out of people to write good software, help them develop professionaly, or have them become leaders - but you can't force them without adverse effects. This is especially tough to work with if the student organization is your priority, like it was with me.

There are several ways an organization can handle this. One popular way is to ruthlessly filter out people in the application process until you get *only* motivated people. Some clubs at UCLA, and many elsewhere, do do this. But, this can be very exclusive and biases towards those with prior experience, and that wasn't a compromise I felt like I could make.

Another way is to just push people very hard until they quit. Many dev orgs at UCLA, and more at schools like Berkely, use this strategy. It sounds harsh, and it is - but it also works. People who stick through tend to get an insane amount of professional development and find it one of the most rewarding experiences in their college career. But, the people who don't stick through are underserved and are often put through a tough time.

I wanted to avoid that model, so I swung hard in the opposite direction. At Teach LA, I gave soft encouragement, but otherwise felt that I didn't push people at all. I was extremely flexible on deadlines (in most cases, letting people set them themselves); ran few mandatory meetings; let people take as much time off as needed, and make up for their time some other way (which often included me doing it).

At the time, I thought I was creating a welcoming environment. In some ways, this is true - I do think that our dev team was *much less stressful* than almost every other dev team at UCLA.

But, it was also a pretty big misstep.

Deadlines are useful! Setting hard deadlines and being flexible on them is psychologically very different from letting people set their own deadlines. For beginners, setting your own deadline is daunting within itself; and, the habitual procrastination that most people have sabotages the positive effect that setting your own deadline has on your own schedule. Receiving a deadline from someone else is a signal and a reminder to do work! Beyond that, it can actually make things more daunting; telling someone a task may take them 4 weeks is *scary*, even if I only said that to give them buffer. In hindsight, I would have set more aggressive deadlines, but maintained the same level of flexibility. This keeps the positive of flexibility around student life, but grounds them more in their work.

Beyond that, I wish I spent more time pushing people to beat their own impostor syndrome. I did spend quite a bit of time emphasizing that anybody could learn our curriculum, that it was okay that people join without much experience, etc. But, that's pretty generic advice! Instead, in the numerous 1-on-1s I did, I should have been more direct. I saw a ton of potential within the people we took on, and I wish I spent more time convincing people that they could build and maintain big, impactful systems. I didn't realize just how big impostor syndrome was pulling back people in our dev team until after-the-fact, when I caught up with people outside of my "Teach LA President role".

In a bigger-picture move, I definitely could have provided more structure. Structure is not the same as pushing people, even though I conflated the two; asking for updates, pulling people into code review, creating design docs, or doing post-project reviews would probably not overstress people. They are all valuable parts of the software design process, and in many ways, would *destress* people - as they had structure to lean back on and support them.

Instead, I mostly ran on a "ask me if you need help, and I'll do regular check-ups" model. This neglects how hard it is to ask for help, especially if you're already feeling unqualified; and, how much of a cognitive load this puts on people to self-identify problems. I would recommend that for future dev team leaders, you build structure and feedback *into* your organizational structure, so much so that it feels natural. Even if it seems clunky at first, I think this is crucial to running a good dev team.

#### The Banking Model of Education

In Fall 2020, I read Paulo Freire's [Pedagogy of the Oppressed](https://en.wikipedia.org/wiki/Pedagogy_of_the_Oppressed). A concept he laments is the "banking model of education", in which teachers "deposit" knowledge into students to fill them with knowledge. This assumes that the teacher is the sole source of truth, and that the student's job is to just memorize information - not challenge it.

Instead, he proposes critical pedagogy: the learner is a co-creator of knowledge, exploring the world *with* the teacher. Students are not passive listeners: their point of view drives how they learn, and the teacher's job is to support them in exploring relevant problems. At its theoretical form, it is a model for true liberation in education.

I'm sure I did a poor job of explaining the book, but it really resonanted with me. And in some senses, it's extremely applicable to how I trained devs at Teach LA.

My training was almost entirely didactic, with a small blend of "hands-on" projects. Over three different corpuses (learning labs crash course, winter dev training, QWER Hacks workshops) my training materials were ~ 20000 words long, and about 25 hours total of video. Most of it was me trying to explain as much web development knowledge I had to everybody who participated. I also heavily relied on audience responses (when possible), and creating mini-projects for people to work on in parallel to the "course material".

This approach isn't *bad*, per se - and for dev teams at UCLA, it's quite novel; most other teams simply tell their members to "read the docs" or hop on a project immediately. At the time, I dismissed this as leaving people out to dry.

Quite frankly, I was wrong. Yes, providing no support is clearly bad. But the extreme of just dumping loads of information, with no thought on developing critical learning skills, is equally as bad.

There's quite a bit of value in working with a completely new member on a serious project. You are closer to Freire's vision, where the teacher and the learner tackle real problems (in this case, the software) together; instead of depositing knowledge, you can value the lived experience that the student has and incorporate it into the project. Of course, doing this properly requires walking a fine line, and I don't think current dev teams do this for the purpose of critical pedagogy. But, I lost this element when I ran training my way, and ended up depriving students of some core skills: resilience, learning how to learn software development, reading docs, unblocking yourself, etc.

There are bigger questions too. Why are we making this software? Does it solve a problem? Is it easy to use? Is it maintainable? All of these rely on the learner's lived experience as much as the teacher's, if not more.

I don't think we'll see Freirean software development education from student developer teams anytime soon (though I'd love to be proved wrong). But, I do wish we incorporated more of critical pedagogy within our teaching methodology. The training materials I wrote were useful, but I should have spent more time developing critical (as in critique) skills within our developers. Instead of creating a "one-size-fits-all" training program, I should have spent more time sitting down with the devs to understand their experience and viewpoint, and use that to solve problems together.

#### Creating and Maintaining Projects

A clear misstep I made was not running projects well. A couple of things at play:

1. I underrated the importance of a good project manager (PM).
2. I didn't perform enough user research.
3. I didn't typically set bite-sized deadlines (see above on pushing people).
4. I chronically underestimated how hard making a project is end-to-end, especially in the ramp-up phase.
5. We didn't have dedicated designers, from a UI/UX or product sphere.
6. I was definitely overstretched, and too eager to give people work.

This is an area in which I knew I did poorly in, but am not so sure what the resolution is - I've never actually worked within a long-standing project team! When I was a dev on the Teach LA dev team, we were mostly still in our infancy. In **every single internship that I have done**, I have functionally worked by myself - which is quite unlucky and a bit frustrating.

There have been some improvements this year under the new dev board. Creating project design docs is a great move in providing more structure and breaking down the problem statement; it holds people accountable. They've treated PM / Design recruitment & growth more importantly, which is great to hear! And they also scoped down the aggressiveness of projects, which has been good for keeping projects realisitic.

In hindsight, I wish I spent more time asking other dev teams - either ones on campus like [Creative Labs](https://www.creativelabsucla.com/) or [Nova](https://novaforgood.org/), or otherise - how they structured their project teams. Doing more research at that stage would have saved me a ton of pain, and would have created a much stronger foundation for the future.

### On Pedagogy and Teaching

### On Community Building



### On Writing

The issues with dev team succesion that I mentioned above really made me realize how much stuff I kept in my head. I wish I wrote things down more!

On one hand, I tried pushing us in this direction. I established a [Blog](https://teachla.uclaacm.com/blog/) and [Reports](https://teachla.uclaacm.com/reports) section, and encouraged others to write down more about their processes (writing software, recruiting interns, etc.). Internally, I wrote a couple of docs that explained processes. And, I was super active on GitHub, with the big move being open-sourcing our training.

That being said, this culture of writing didn't really continue after I left. Beyond that, there's a lot that I didn't write down - particularly things that only involved me - that then got lost to the ages. And I never was able to convince other people to do a lot of writing.

Howevever, above all, I think that comes from these things *not being easy to read*. If you read my blog, you know I have a tendency to dump a ton of information; this post is no exception. This type of content, information-dense and often unedited, is hard to read. It doesn't matter how much you write, if people don't read it.

In that sense, I wish I spent more time creating concise, condensed documentation. One-pagers, infographics, and tight explainers instead of sprawling documents. Even the presentation - putting actionables or tl;drs at the top - goes a long way.

A significant portion of the information "lost" in the hand-off was stuff that I *had* written down. But it was hard to read.

This lesson is part of the reason why I started the conciseness series. It's also a lesson I've tried to bring to running ACM as a whole, and to other aspects of my life.

### On Burnout

I'll be quick here: I was super burntout, as was quite a few people in Teach LA. Part of this is from the pandemic, but part of this is also from the extreme amount of unpaid labour people in student organizations do.

I think there are three things I wish I did:

1. Identify what people like to do, and especially what people hate doing. My theory is that burnout comes more from the "quality" of work (i.e. how annoying, non-impactful, frustrating it is) rather than the quantity. Focusing more on what makes people happy and fulfilled is especially important in student orgs, where there is no guarantee of involvement (and people are donating their free time). An example: using something like `prettier` so people aren't hit with formatting lint errors on their PRs, creating a slide template so instructors don't have to manually reset styles, or automating finance and/or marketing.
2. Significantly cut down on the amount of work that we did. I contend that we probably could have taken all of spring quarter off, or reduced new endeavours (like the React Native class). Clubs don't always have to grow exponetially, and my obsession with doing so caused some problems.
3. Build healthy breaks into my schedule. There's a few benefits here other than the obvious one: it forces me to do less work (which is more sustainable succession-wise), it sets a better precedent for future leaders and current members, and it would have let me focus more on systems-issues rather than individual fixes, since I had less time.

I've seen a negative ripple effects of the precedent that I've set, both in terms of the responsibilities denoted by the roles that I took on, and the psychological effects its had on people who worked with me. I deeply regret this, and it's one of my biggest failures - let alone the health complications I faced as I ran Teach LA.

Tackling burnout is a much bigger problem than I thought. It's one we struggle with at ACM as a whole, and my inkling is that there's something unique about UCLA's tech community and culture that leads to this - it isn't just ACM, but many tech clubs. Maybe a thinkpiece will come out eventually.

### On Succession

I talk about this at length in the previous section on succession, but I cannot emphasize how hard a good hand-off is.

Let me paraphrase something a club advisor told me, that has only recently stuck with me:

> Your primary job as the club president is to prepare the club for its next president, and prepare the next president for their role.

In some ways, I think this is eerily true. Yes, you have your own goals, and you probably want the club to grow. But with student orgs, your tenure is probably capped out at a year. The biggest impact you will have is likely not the direct consequence of what you do in your term (though it might); it will probably come from how you set up the club for its years after. Can you build and maintain infrastructure that guarantees succession? That ensures that the club never collapses, or burns out?

From this lens, I firmly believe that the last part of your term - in this case, the quarter - should be quite focused on succession. You should be having talks with potential candidates and the general eligible public; starting hand-off documentation and processes; wrapping things up in a neat bow, so someone can step in. It's probably not the time for huge new initiatives, unless you know that there's already a succession plan in place.

And, a good hand-off is not just a set of docs. I'm particularly impressed by [exploretech.la](https://www.exploretech.la/)'s handoff this year: the previous leadership has stayed just as involved as they need to be, acting as the perfect advisors. They made intros to other leaders and institutions for the new leaders, gradually ceded responsibility, and still hold some sage wisdom. I hope I can replicate something like this, without overstepping.

### On Doing What I Want

Broadly, I wish I spent more time doing what I wanted. I often created work for myself that I didn't have to do.

From a Teach LA perspective, there were many lofty goals that I didn't take a healthy stab at. Serious pedagogy; fully open-sourced curriculum; going ham on a learning lab, or pairing them closely with curriculum; extremely streamlined projects processes; writing open-source tooling (ex an accessibility auditor). I wish I tried my hand at least once of these, in a dedicated, serious fashion; instead, I overstretched myself and was left with quite a few regrets.

I also had other things in life I wanted to do! Even from the ruthless lens of productivity, spending a bit less time throwing myself at Teach LA might have made me better at my job. From reading and analyzing more, to trying out student research, to just relaxing - each of these things arguably improves my impact in Teach LA, and gives me a bit of a break. I know this sounds obvious, but I wish I did this more.

All of these things, like others, have ripple effects and precedents. I wanted to set a precedent that Teach LA is a place where you can do what you want, and in most senses, I think I failed. Starting with me would've helped.

## Learned Lessons and Regrets (tl;dr)

### Teaching

### Dev

### Everything Else

## Closing Thoughts

### Learning Labs

### Where I Am Now
