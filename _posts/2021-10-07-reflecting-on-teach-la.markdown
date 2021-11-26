---
title: 'Reflecting on Teach LA: Unprecedented Times and the Dev Team, Again'
date: 2021-10-07 02:34:50 Z
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
    * [Succession and the Wrap-up](#succession-and-the-wrap-up)
* [Large Thoughts](#large-thoughts)
  * [On Running Dev Teams](#on-running-dev-teams)
  * [On Pedagogy and Teaching](#on-pedagogy-and-teaching)
  * [On Recruitment and Community Building](#on-recruitment-and-community-building)
  * [On Burnout](#on-burnout)
  * [On Doing What I Want](#on-doing-what-i-want)
  * [On Succession](#on-succession)
* [Learned Lessons and Regrets](#learned-lessons-and-regrets)
* [Closing Thoughts](#closing-thoughts)
  * [Where I Am Now](#where-i-am-now)


## Context

I'll spend a bit of time summarizing what my last three years at Teach LA has looked like. If you've read [Reflecting on the Teach LA Dev Team]({% post_url 2020-06-27-reflecting-on-tla-dev-team %}) (or are in Teach LA, ACM, etc.) much of this may be review.

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

**tl;dr: our classes chugged along, though React Native faltered. I ran dev training for our dev interns, and continued juggling all the dev-related responsibilities.**

#### Dev Intern Training

#### Succession and the Wrap-up

## Large Thoughts

### On Running Dev Teams

### On Pedagogy and Teaching

### On Recruitment and Community Building

### On Writing

### On Burnout

### On Doing What I Want

### On Succession

## Learned Lessons and Regrets (tl;dr)

### Teaching

### Dev

### Everything Else

## Closing Thoughts

### Learning Labs

### Where I Am Now
