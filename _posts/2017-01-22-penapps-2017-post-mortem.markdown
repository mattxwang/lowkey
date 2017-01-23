---
layout: post
title:  "PenApps 2017 Post-Mortem"
date:   2017-01-22 23:18:42 -0400
categories: dev
---

![PenApps Cover Page]({{site.baseurl}}/img/2017-01-22-pennapps.png)

I'm writing this post as I cruise along some Pennsylvania interstate highway in the middle of a Sunday night. I'm going to get home at 4am, or crash at boarding, and I'm going to be ridiculously sleep-deprived for the next two days (as if I wasn't already). Over the past weekend, I totaled 6 hours of sleep, took a skate to the knee, overstrained by hands and arms, and drank more than 10 cans of pop (no coffee though). I'll deviate from the cliché where I describe doom and gloom and then proceed to tell you how it's just warped bias, because this weekend was truly hellish. The only reason I ever go to hackathons like PenApps is to make some sort of long-term investment, at the expense of my short-term health and well-being. So, what's the long term looking like right now?

## public class PenApps2017{

To understand my predicament, the first thing you need to know is that hackathons like PenApps are pretty exclusive, and there's an application process involved. The second thing you need to know is that I got wait-listed for PenApps, and didn't expect to go. Unfortunately, that means I wasn't exactly prepared for the email I got on Tuesday telling me I'd be taking a bus to Penn at 1am on Thursday night. I scrambled to cover my existing responsibilities, catch up on homework, and get packing for a 3-day trip.

What I didn't end up actually doing was finding a team, or thinking of what I wanted to do *at* the hackathon. This is a big deal, as you'd want to spend the 36 consecutive hours of hacking as efficiently as possible. So, going into the hackathon I was at a technical disadvantage. I didn't have an idea of what I wanted to build, which meant I would have to decide at the hackathon. I didn't have an idea of what technologies I'd like to use, which meant I would have to decide at the hackathon. I didn't have an idea of who I would like to hack with, which meant I would have to decide at the hackathon.

But that's alright, since hackathons (at least for me) are a learning experience, and not a competitive one (which it is for many). I cared more about the potential of what I could learn, so everything was still going smoothly. And while I did end up learning a lot, it wasn't what I expected.

## public static void main(String[] args){

On the bus to PenApps, I met two other people (no names this time!) who also didn't have a team. Perfect! This could be the dream team! Even though this was the first hackathon for both of them, I was confident that this would be an awesome learning experience regardless. And, to reiterate, it was. I'm not here to diss my teammates (they were awesome), but I didn't know that this team would give me a drastically different experience than what I expected.

Oh, and did I mention the bus left at 1am? Why? On the bright side, I had some friends on the bus, so I had people to talk to. On the not-so-bright side, I had some friends on the bus, so I had people to talk to and didn't end up sleeping a lot.

We arrived in Philly around 2/3 PM, and man it was awesome. We were stationed in the heart of PennEng, which is a super duper cool program, and I was already hyped seeing 3D Printers, Amazon Alexas, and throes upon throes of people.

As we settled in, I started thinking of ideas for our team to work on. What about an Alexa GitHub assistant? Or a smart closet? Or, drawing inspiration from a friend, what about a gamified banking app that allows you to dress up your ATM and bank account and have them fight other people's ATMs? Okay, well that last one was a bit far-fetched, but I had a bunch of ideas that I thought were super awesome. In the end, we "decided" on creating an online tour-guide app: it would use the user's GPS locations, send a request to the Google Places API to identify nearby tourist attractions, and then use a computerized voice to read to the user the attraction's Wikipedia entry, or website, or other online resource. There are several huge problems with this idea, but we'll get into that later. For now, we thought that this idea was amazing! We were geniuses! Going into opening ceremonies, we were happy with our idea.

## Project project = new Project("Social Hacking", "Workplace Harassment");

At hackathons, there are often workshops, and PenApps was no exception. Right after opening ceremonies, I attended my first PenApps workshop, on Social/Civic Hacking Basically, Social hacking is a concept where developers create projects for social impact, such as helping a disenfranchised minority group, increase social mobility, and all those other debate buzzwords that do translate into something serious. I have always been amazed by the impact that social hacking can have on the world, especially with the ability that technology has to engage users and process huge amounts of data to create something awesome.

I'm getting a bit side-tracked though, so let's get back on track. In the workshop, we learned about hack4impact, which is a UPenn-based hacking group that makes social hacking projects. We learned a bit about hack4impact's methodology, of which I found one point very interesting. Our speaker flat-out told us that **we aren't going to solve huge problems like racism, wage inequality, or sexual harassment with one project. Instead, we need to focus our efforts on smaller, tangible problems, and deal with the causes of that specific problem.** Starting small allows you to tailor your project to that issue, rather than blanket policies that don't effectively deal with any problem. Plus, developing things in bite-sized chunks is always easier than tackling a gargantuan problem, especially when you're 3 high schoolers making something in 36 hours.

I don't think that lesson is exclusive to social hacking. *"But Matt"*, you say, *"it's obvious! Everybody knows you start small and build up!"* Maybe it is for some people, but I realized that this exact issue is why a lot of my projects (e.g. WAC, OMUN, SSS) all end up falling short of what I dreamed of them to be. I try to make them do everything, instead of focusing on a specific goal to achieve. The best example of this pitfall for me is the old UCC Robotics Website. Back in Grade 9, when I first made the UCC Robotics Website, I was super, super excited! Not only would this website have information about our club, but it would also have an attendance function, messaging, a notice board, an admin backend, and email alerts. It would be the perfect club website, and everybody would want to join robotics. Obviously, that didn't end up happening. Since I didn't end up focusing on a specific concept, everything was kinda, well, *meh*. Since then, I've realized that shoehorning a social network into a humble club website maybe isn't the best idea, but I still repeated this mistake (unknowingly) throughout my other projects, even now. For SSS, I've split up too much energy into Deployment *and* Submissions *and* User Docs *and* Programming Guides. Looking forward, I'm probably going to focus more on Deployment + Docs, which was the initial purpose of SSS. For OMUN/WAC, I went a bit overboard on writing our own custom registration system, instead of using the thousands of alternatives that mostly work for our situtation, only because I wanted to make the *perfect fit* for our conferences. Instead, I should focus on content delivery first, since it's the point of a conference website.

Unfortunately for me, I didn't heed this lesson in the hackathon. I only realized that this was a problem once I reflected on the hackathon on this very dark and kinda spooky bus ride and started writing a blog post.

So, after the workshop, we headed back to our hacking space. And, I realized (with a lot of yelling from a certain friend) that our current project wasn't feasible or useful. Apparently, Android phones have a similar ability, to take a picture of your surroundings and get information about tourist attractions. Plus, online tour guide apps already exist, and don't need to pull their information from Wikipedia. The nail in the coffin was that, other than me, nobody in our group had ever coded in an object-oriented language, which is a huge barrier to making things with Swift, Java, or even Ionic (the freaky lovechild of Cordova, Angular 2, Typescript, and the horrors of NPM). While I'm optimistic about what you can do at hackathons, I'm not delusional.

Oh yeah, and someone else joined our team too. Not bad, but unfortunately not very experienced in compsci.

So, it was back to the drawing board for us. I thought back to the social hacking workshop we just had, and I remembered something. A watered down version of "don't be an idiot and try to do anything", in the form of "let's try to target a root cause of a specific problem". Luckily for me, I had just read *Lean In* by Sheryl Sandberg (great book by the way, you should read it), and I remembered a tidbit about information asymmetry in the workplace. That's a specific root cause that can be fixed relatively easily (with a mechanism that bridges the information gap). So, we had our new idea. An application that crowdsourced reports on workplace harassment/misconduct, so that other people can know what's up!

Looking back on this idea, it wasn't that bad. The biggest problem was with how we implemented it (spoiler: very poorly). But, at this point, I thought this idea was super awesome.

It turned out that the now 3 other team members in my group knew rudimentary HTML & CSS, so it seemed like we'd have to make a web application. I don't think we would've been able to make anything that required an object-oriented language, or as some of my friends call it, "real programming". Plus, we had one member with a Windows computer and no project development experience, and the other two had never made a full project before, web or not. So, I tried to play everyone's strengths. I had our three team members prototype what they wanted the site to look like and do, while I tried to figure out how we would do this technically. At almost midnight on Friday, things weren't looking great, but they certainly weren't looking bad.

## for (int i = 0; i < 36; i++){if (i == 4){break;} else{work();}}

This is the equivalent of an interlude, so if you really only care about the tech, skip this section.

When I first saw the video for PenApps, one of the coolest things I saw wasn't actually tech related: it was skating. Skating is very personal to me, and is by far my favourite athletic activity. When I just came to Canada (4 years old!), my mom was super concerned that other kids would view me as "un-Canadian" and be racist towards me (even though I'm pretty sure they wouldn't). So, she signed me up for skating classes, since that was a stereotypical thing that Canadians did, or at least the Canadians on Chinese TV.

Turns out, she signed me up for figure skating. This ironically led to kids in my JK/SK class to tease me for being girly and doing figure skating, which kinda sucked, but I also actually enjoyed it. It's hard to describe in a blog post, more so when I've been a functioning zombie for the last few days. It's that feeling of the wind against you as you skate, the fluidity of movement, and just how smooth it feels as you glide around on ice. I really, really, liked skating! Eventually, my mom realized that signing her son for figure skating wouldn't do me any favours, so she swapped me to houseleague hockey. I had a prolific houseleague hockey career, scoring a goal on my own team in one season, but I never forgot just how awesome skating was.

As I grew up (read: early-teens), I could do things like skating with friends without having my mom asking me to prepare for the SSAT, again. So, I'd dance on the ice. I'd talk on the ice. I'd remember the "good old days" on the ice. I really did love skating. It became more than just the rush you get from skating, but also a social activity, a great way to loosen up and have fun with friends.

Unfortunately, I haven't had many opportunities to skate lately, with commitments, responsibilities, and schoolwork catching up on me. It was super disappointing, since I really wanted to hang out with friends and go skating. I had made time to do it earlier this year, but unfortunately sickness struck and we had to cancel. My schedule for Jan/Feb is absolutely brutal with no free weekends, so it was just a bigger disappointment.

So, imagine my surprise when I realize we're going skating at PenApps. I was ecstatic! Plus, since most of the people haven't met me yet, they wouldn't know how often I re-use my puns and skating dance moves. This was the perfect opportunity! And, when I hit the ice, it was everything I wanted it to be: Lots and lots of dancing, and some teaching. I would skate up to a random person, and do a dance move related to the song (e.g. ballet moves during *Chandelier*, blossoming flower in *Let It Go*, or doing the actual moves in that song where you hop and do stuff). I really enjoyed it, and usually my dance "partner" loved it too! It was a great way to cool off, both literally and figuratively. And, if I saw someone struggling skating, I'd go over and help them out (with my patented "Hips Don't Lie" analogy). It's a great way for me to pass it forward, and it's awesome to see the look in someone's eyes when skating *becomes* fun for them.

I happily skated for 2 hours, and it's one of the fondest memories I have of PenApps. Even though some dude kicked me in the knee with his figure-skate edge, and caused bruising that I'm still feeling right now, it was definitely worth it. It's those small things that make me enjoy life.

## project.setDB(firebase);

After some awesome skating, it turned out that two of our team members were going to go back to their hotel instead of hacking during the night, which is inconveniencing, but fine. I asked the other group at our table (three of my friends who were all way better at programming than me) what I should try out, especially since I was looking to learn something new. Someone suggested that I try [Firebase](firebase.google.com) + [Polymer](polymer-project.org), which was a popular combination and seemed pretty cool. I followed [this tutorial](https://codelabs.developers.google.com/codelabs/polymer-firebase-pwa/), and after two hours **I had absolutely no idea what was going on**. Here's mistake #2. Instead, of continuing to try to understand Polymer, which is doable, I abandoned it in favour of just doing Firebase plus some good old jQuery DOM manipulation. And, in the beginning, this made sense! I could fall back on a comfort library, and focus on learning Firebase. This should be good, right?

Hella wrong. Obviously, this is in a post-mortem, so it's the whole "hindsight is 20/20" idea. But there were much better routes I could have taken. If I had to make another JS-based website/webapp (my comfort zone), I should've tried a more unfamiliar and new combination, such as React/Angular/Vue + Firebase, or continuing with Polymer. This way, I maximize how much I have to learn, and expand my horizons in terms of what I'm able to do. I had never really got any experience with MVC-esque frameworks (and even after doing 2 Ionic/Angular apps, I still don't), and certainly had never made one from scratch. This was the perfect opportunity, in a location that's geared for this kind of learning, and I chose not to take it because I'm a wuss. Damn Matt, why you gotta be a wuss.

So, I trudged on and configured Firebase pretty quickly (it is pretty simple to use, and the documentation does help a lot). I got a basic comment system up and running, which is the barebones of what our project was supposed to be. I added in some Bootstrap (something I shouldn't have done, I should've gone for another framework I don't know that well, but I digress), and things looked kinda nice. And, it was past 4:20 AM, so I hit the hay, satisfied with what I had done.

## group.learn = true; matt.learn = false; project.state = "disappointing";

Once our entire team was re-assembled, I briefed our team on what our plan was. Since they were unfamiliar with HTML & CSS, I gave them a few resources to learn how to wield the tools of web design, and guided them through making their own awesome page (the Resources tab, if you're curious). I also gave them a Git crash course (which didn't end up working out), and I attempted to have them use firebase (but alas, Terminal/Command Prompt was a bit too hard for them to handle at the moment). Even with these pitfalls, I was happy that my team was learning new things about HTML & CSS (e.g. inheritance, the box-model, using classes vs. ids). I wasn't here to win or make a super awesome app, and I enjoy teaching. Plus, I find that it reinforces thoose same concepts in me, which is always good.

As we kept on working throughout the day, I was feeling kinda good! We were making progress, albeit very slowly, but we were learning.

Well, actually, I wasn't learning much after the initial Firebase initialization. Since I used it like a key-value database, I didn't actually use Firebase to its full potential, or need to do much to the product after making the basic Firebase implementation. Instead of looking to try new things, I just fiddled with CSS, added a few JS-based tweaks, and added comparative sorting. Once again, I stuck with my comfort zone when I should have tried to experiment and try as much as possible. Man, this mistake keeps on giving.

As the day went on, I also realized that there were other problems with our concept. For starters, WorkSafe (the name we came up for our project) was like a worse [Yelp](https://www.yelp.com), or a ridiculously terrible implementation of [InHerSight](https://www.inhersight.com). We didn't end up making a product that did something brand-new, and we certainly didn't make a better version of Yelp.

Nevertheless, our team powered forward and kept on working on the app. We added a small numerical representation of what exactly caused the discomfort or harassment that led to them coming onto our site. We added Google Places integration + fuzzy search for organizations. But still, we didn't really end up making a differentiable product. It was just meh.

But, my solace was that my team members were actually learning. They were able to fix mistakes themselves, realize what was wrong, and started to enjoy hacker culture. I was really happy that things were working out for them, even if they weren't working out for our group.

As the Saturday came to an end, I was nevertheless still disappointed. We didn't make any real progress with the app, and there didn't seem like there was much for us to do to make this idea next-level within 8 hours. So, I procrastinated by documenting our progress on DevPost. While I was trying to attempt to make our project seem useful, and failing, I realized that we fucked up. Majorly.

## project.submit();

I ended up getting two hours of sleep that night, mostly since I was trying to figure out how I would make this project somewhat useful. And, when 8:00 AM rolled around on Sunday morning, I had nothing.

At hackathons, you present what you've made after your hacking, in an expo-style format. During our expo slot, I felt really bad. As I made up some BS for our judges about how our project was good and that it would make a change, there was one of those telepathic conversations that you can interpret based on their eyes. I could almost hear them calling me out on how bad our idea was, and I definitely could see them not being satisfied with our presentation. I was crushed, especially since I normally pride myself in my presentation skills.

But then, something interesting happened. Each judge would ask us what year of university we were in, and we'd respond with "we're in high school". The judges would then instantly transform from disappointment to pride and joy. They would spend the rest of our session congratulating us on learning so much, on going to hackathons in high school, on how awesome the drive to code and innovate and create and try and all the other awesome characteristics we had. That's when I realized that I hadn't actually been caring about our team's progress. I was being super mopey and inducing self-pity because our project sucked, but I didn't think about the progress that we had made as a team. Sure, that didn't replace the shitty feeling of knowing you made something bad, but it make me think about how I defined success.

Normally, this would be when I conclude with a happy ending, complete with the message "I didn't realize just how much this group meant to me", but that'd also be BS. When you do a post-mortem, it's all about weighing things situationally, and while this concept of defining success by improvement is important, it isn't the be-all and end-all. And this isn't a happy ending.

## project.cleanup();

Instead of being mopey, after our expo I wanted to lighten the mood. Basically, as a group (between two teams) we went through `/r/WouldYouRather` for a good hour or so. It's also one of those memories that I think I'll remember PenApps for.

After we finished `/r/WouldYouRather`, we proceeded to our schedule closing ceremonies. Unfortunately, the closing ceremonies were delayed by 2 hours; I killed time by playing Hearthstone with a fellow hacker (and hopefully made a friend), learning New Jersey slang, and "making it sprinkle" (it's complicated). But, when ceremonies did end up starting, I was actually amazed. The projects that other people made were insanely cool. Other people had made a glove that lets you play the piano wherever you want, or electric temporary tattoos that act as a keyboard, or a mechanism that made an RC car self-driving, or software that allowed people with Parkinson's to use computers effectively. The level of creativity was insane, and the projects that were demoed were super, super, awesome.

And, yeah. Closing ended, we got a bit lost in the rain, but found our bus stop, and now I'm writing this blog post on the bus while my leg is cramping. That's the end of the PenApps story. Right?

## }}

In the very beginning of this post-mortem, I said I learned a few key lessons. Now, I want to articulate them: not only for my own sake, but hopefully for yours. I don't want you to make the same mistakes I made, the trap of shooting for a perfect product, and in the process not trying anything new. I want you to be able to use hackathons to their full potential.

That being said, I'm not saying to take my word as gospel, because I'm not hackathon pro, and I'm not coding pro. I'm just sharing my experience on what I think I did wrong. Here's the TL;DR of this post, formatted for your liking:

* When hacking, go narrow and deep, not wide and broad. Aim for a specific solution for a specific problem.
* A project should have a singular purpose or identity.
* When brainstorming project ideas, pinpoint how your project differs from the status quo, and what impact it will make.
* Hackathons are the perfect environment to experiment: use technologies that you're not familiar with. So, do that!
* When new technologies get tough, don't be a wuss. Keep on trying, especially with the hackathon support network around you.
* Anything is a balance between learning and results: find that balance in your own goals.
* Enjoy the happy moments, and get some rest.

I'm not going to continue WorkSafe, because those problems that I identified are inherent to how the app is designed. But, my big takeaway is for my next hackathon, or my next project, or my next idea; I wasn't "unlucky" this time around, rather my failure at PenApps is from not focusing on a problem, from not identifying my project's difference from the status quo, from having a mentality that didn't promote learning and growth.

Ad astra.

## Appendix

Here's what our project ended up looking like:

![Our Final Project]({{site.baseurl}}/img/2017-01-22-worksafe.png)

You can test it from the [Firebase Deploy link](https://penapps-70df7.firebaseapp.com/index.html).

The GitHub repo is at [malsf21/penapps2017](https://github.com/malsf21/penapps2017/), and the DevPost is at [this link](https://devpost.com/software/penapps2017).

Find out more about PenApps from [their website](penapps.com).
