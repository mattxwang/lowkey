---
layout: post
title:  "A Trek And A Half | OMUN.ca General Public Release"
date:   2016-06-27 11:30:43 -0400
categories: dev
---

Today, we [released Version 1](https://github.com/malsf21/omun.ca/releases/tag/v1.0.0) of [omun.ca](http://omun.ca), which is a huge milestone for me: it's a completely solo site project, so I've been doing planning (with some Agile Scrum, of course), content, coding, QA, everything. It's been a nightmare, but at the same time a great learning experience: a lot of late-night realisations of how I should do things next time around, which is better to know now than later.

There were a few things that I found pretty important, things that I'm going to take into consideration for my next few projects (such as WAC, whatever I do at SHAD, etc.):

## Know Your Technology Stack

So when I first envisioned building omun.ca, the only foreign technology I was going to use was Bootstrap, jQuery, and GitHub. Seems pretty boring, right? Making a new page, updating navbars, seemed like a huge hassle.

When I had the idea for a blog, I did some research into static site generators, and it's no surprise: I chose [Jekyll](https://jekyllrb.com/). It's pretty awesome, and it's the first thing I added to my technology stack. It made writing content easier (especially for other contributors), keeping imports and styling consistent, and made my life a lot easier. I'd recommend it to anybody who's making a conference/event-type page, especially one with multiple events. Unless there's *another* awesome framework that I'm missing out on!

In addition, I mixed in [Travis](https://travis-ci.org/) to help me catch out bugs that I missed, [ZenHub](https://www.zenhub.com/) to help me keep organized, [Slack](https://slack.com/) so I could get some help and/or a second pair of eyes if needed, and a lot of Googling. At the end, it grew from more than just a small core to a bigger set of programs. Obviously it was some work setting things up and getting used to the groove of things, but I think they all contributed to making my workflow smoother.

## Plan, Plan, Plan!

Originally, I didn't plan on having an app, an API, or user-editable site vars (such as `contact.yml`). Ultimately, things happen, and it's tough to predict new features: but if I knew we were going to have an API Endpoint, it would make things such as designing committee templates, news article information, and other site content easier. It's especially important with an API, as you need to ensure that all of your information can be parsed with an API (I'm currently having trouble parsing newlines, which can be a pain when trying to import site paragraph content).

In addition, planning can help you envision your deadlines and your goals. Investing your resources into the right things at the right time makes releasing certain features easier: for example, it was probably more important to finish building site layout before documenting the API. While both are equally important, one outweighs the other in visual importance, which lead to be finishing that first (and us getting out an earlier release)!

## Documentation

This one's tough and annoying. I'm not a huge fan of documenting code, but it's a super important part of the process. Documenting code makes it easier for other people to understand and use your code, and it's especially important when other people are going to be making edits to the repository (in this case, many might not know how to code!) and consequently changing the site. Documenting with a template is important; easily understandable documentation is important; documentation that is intuitive is important.

I've finished most of the content documentation, which is what we need to fill out the site's content. I need to work on API Docs, which will come with the OMUN API 1.0.0 Release.

## Conclusion

Yeah, that's kind of it. Just a few lessons that I've learned from the OMUN.ca development cycle: hopefully I can apply it elsewhere!

*You can visit the [OMUN Website](http://omun.ca) to see what I'm talking about.*
