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
    * [The Start of the Python Video Squad](#the-start-of-the-python-video-squad)
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

I'll try to give a relatively objective review of my time as Presidet of Teach LA. If you want a real tl;dr, you can [read the blog post I wrote for Teach LA](https://teachla.uclaacm.com/blog/reflection/2021/03/28/board-reflections/#matt) instead.

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

#### Learning Labs Crash Course

#### CityLab, Cipher Salad, and Passworks

#### The Start of the Python Video Squad

### Fall Quarter, 2020

#### The Dev Team, Again

#### JEDI

#### Internship Recruitment

### Winter Quarter, 2021

#### Dev Intern Training

#### Succession and the Wrap-up

## Large Thoughts

### On Running Dev Teams

### On Pedagogy and Teaching

### On Recruitment and Community Building

### On Burnout

### On Succession

## Learned Lessons and Regrets

## Closing Thoughts

### Where I Am Now
