---
layout: post
title:  "Text Editors: Why You Should Choose Atom"
date:   2016-05-31 18:38:42 -0400
categories: tech
---

**A piece of advice** my parents have drilled into me, and subsequently that I've given to other people, is to not skimp out on important stuff: when you're buying a mattress, or shoes, or a TV, that's something that you're going to be using every, single, day. Getting a bad mattress will cause you a lot more pain than the $30 you saved.

But what does that have to do with text editors? I think a similar idea applies, even though the most popular text editors on the internet are free. "Investing" your time into the correct text editor changes your coding habits, and can save you time that you could be doing more work, spending time with family, or watching the next season of *Sherlock*.

As I see it, the four most popular text editors I've seen around are [Atom](https://atom.io), [Brackets](http://brackets.io/), [Notepad ++](https://notepad-plus-plus.org/), and [Sublime Text](https://www.sublimetext.com/). I'm going to make my case for Atom being the best choice, and I'll try my best to stay unbiased while I give you my arguments.

## Compatibility
------

Probably the most important part of your text editor is whether or not it actually runs on your computer. Let's do a quick analysis:

|      | Windows | OS X | Linux (Ubuntu/Debian)|
| -----|:-----:| :-----:| :-----:|
| Atom | Yes | Yes | Yes |
| Brackets | Yes | Yes | Yes |
| Notepad++ | Yes | No | No |
| Sublime | Yes | Yes | Yes |

Well, off of that it seems like Notepad ++ is at a severe disadvantage. Unix systems are pretty popular in coding and design, so Notepad++ already loses that battle.

Everything else works across all three platforms: Atom uses the [Electron framework](electron.atom.io), a pretty cool way of building cross-platform apps. It's a personal favourite for me, and I suggest you check it out. Brackets and Sublime also pass with flying colours, both being cross-platform. Brackets is also written in HTML, CSS and JS; sublime is closed source, and written in Python.

**Winners: Atom, Brackets, Sublime Text**

## Functionality
------

Let's talk functionality. I'm not a diverse, super professional, project coder: but I do have a lot of experience coding in Javascript, Python, Java, and HTML/CSS (I know I know, not a really programming language). That being said, it's hard to actually quantify what functionality a text editor needs, and what it doesn't. I'll give my personal list below.

##### Package Manager/Hackable/Customization

A big part of text editors is how you can customize it to make it your own. Atom, Brackets, and Sublime all have their own APIs and package managers, so you can make your text editor the way you want it. That being said, since Sublime isn't open source, there are limitations on what you can do: further complicated by having a Python API instead of simple HTML, JS, and CSS. Between Brackets and Atom, I'd give this to Atom: it has a larger package community, easier setup to make your own packages, and a better support team (Github > Adobe). Packages like `pigments`, `color-picker`, and `multiple-cursors` make the experience amazing, especially with the framework allowing virtually any package to exist, no matter how much it modifies the editor. And then, you have Notepad++. You tried.

**Winner: Atom**

##### Visuals and Theming

Another part of text editors is how they look, considering that you look at it every single day. Notepad++ doesn't support too many themes. Sublime, Brackets, and Atom all support UI and syntax themes, which is pretty cool: there's a plethora of themes available, for whatever style that you like. In addition, making your own themes is nearly effortless: using CSS or very CSS-like syntax, anybody can make their editor flamboyantly pink, or gunmetal gray. Natively, I'm a huge fan of how Atom and Brackets are layed out versus Sublime's relatively dull color palette, but that's a rather subtle difference that can be fixed with themes. The last editor, Notepad++, looks rather archaic: it looks like something from Windows XP, not the modern websites, programs, and designs that people would be making on it. For that reason, I'll give a three-way tie to Atom, Brackets and Sublime.

**Winners: Atom, Brackets, Sublime**

##### Speed and Resource Performance

How fast your text editor is like how fast your car is: for some people, it's the world, and for other people, well they drive Camry's. Speed wise, it's a little tough to judge between those four, since it depends on what task you're doing. That being said, Notepad++ is the least laggy, since it lacks a lot of core features; it also has a super fast file open/save time, and startup time. Sublime and Brackets go toe to toe on speed, but lag a bit behind Notepad++; finally, you have Atom. That thing is super slow: partially because of the [Electron](http://electron.atom.io) framework, and partially because it doesn't focus on speed as a priority. If you're looking purely for a lean, mean, racecar of a text editor, Notepad++ is your way to go.

In addition, if we extend the car analogy, some people don't care too much about how many resources their car uses, or how much care will go into it; others are diehard on getting that Tesla. Similarly, Notepad++ is a low-resource text-editor; I got it to run on Windows XP, no problems! On the other hand, Sublime is still pretty resource efficient, but doesn't come close to Notepad++. Brackets is next; web technologies often mean a lot of resources. Atom takes the worst in this category: it has a noticeably long startup time, uses RAM like Google Chrome, and is pretty slow on Windows XP. For most people, this second sub-category isn't too big of a deal: but to those whom it is, I'd suggest sticking with Notepad++ or Sublime.

**Winner: Notepad++**

##### Coding and Language Support

Coding and language support seems like a very broad category, but for me it boils down to things like Code Completion, Language Support, Syntax Highlighting, etc. Notepad++ takes an absolutely clear loss here, since it doesn't support many new languages, and doesn't have an easily navigable API. Sublime Text, on the other hand, supports more languages natively: even relatively "obscure" ones are auto-higlighted for you, something that Atom nor Brackets provides.

That being said, Atom, Brackets, and Sublime all support packages that can modify the potential of the editor for getting better coding and language support, such as extra language packs, better linters, etc. The marginal difference in downloading a package for an obscure language doesn't give Sublime a clear win compared to other small advantages in each editor (such as Atom's Markdown support or Brackets' Adobe interface support), so I think it's another three way tie.

**Winners: Atom, Brackets, Sublime**

##### Git Support

Git is the new future of code management, and it's taking the world by storm. You'll probably want a text editor that can support it to the best of its ability. That's where Atom comes in: developed by GitHub, it has an amazing featureset for interacting with Git, including syncing your editor with your GitHub Account, great Add/Commit/Push/Merge workflow management, and other awesome interfaces with Git's powers (including switching branches with 1 click, auto-generating .gitignore files, etc.). Brackets and Sublime both have packages to install to add this functionality, but it is often out-of-date, somewhat buggy, and doesn't have the full feature set. Notepad++, well, doesn't have that kind of support at all. Ultimately, Atom gives you the best way to keep track of your code with Git, and use Git to its full extent.

**Winner: Atom**

## Documentation
------

Documentation is important with any software, for two reasons: learning how to use the software, and learning how to improve the software. Atom and Brackets trump both of these categories, with their open-source framework making development with the software a piece of cake; they furthermore have very in-depth documentation on how to use their respective APIs, which makes developing plugins a breeze.

The flipside is Sublime Text: it rather lacks in documentation on its API, and is sometimes hard to understand or out of date. Since Sublime is closed-source, developing with Sublime becomes even more of a pain. The best documentation sources are unofficial, which says much. Notepad++ is... a nightmare to make anything for, even it it is open-source.

**Winners: Atom, Brackets**

## Updates, Bugfixing, and Support
------

No, I'm not here to sell you an extended warranty, but support and updates is a big part of any software. I want to see new features come in if they're needed, bugs to be squashed, and any issues I have with the editor to be fixed. Atom and Brackets are the forerunners in this category: their nature as open-source, web-technology based programs make bugfixing a breeze, once the problem is reported adequately. Furthermore, they both have quicker, and more in-depth update cycles compared to Sublime: Atom in particular updates frequently with bugfixes, feature requests, and everything else imaginable. Sublime gets updated very rarely, since the team is basically one person; and while that's no fault to him, it does disadvantage it as an editor in regard to bug fixes.

Furthermore, the idea of good product support is also important. Atom and Brackets both take the cake here again: they have robust Documentation (as mentioned previously), but also have huge communities and moderators to ensure that any question, no matter how bad or complicated gets answered. The community around both editors is pretty supportive, and has been very friendly to me when I'm troubleshooting problems. The developers for both Atom and Brackets have also been very supportive, often stepping in to answer complicated questions, ensure that feature requests and bug reports are a priority, and communicate about the project vision. In Sublime, the community is amazing, but communicating to the developer is quite tough: it's hard to figure out what's on his plate, what issues there are, and why a certain feature is being implemented. Notepad++ is the worst: the developer has a history of being [misogynist](https://notepad-plus-plus.org/news/response-and-apology-4-sexist-jokes.html), [pretty rude](https://notepad-plus-plus.org/news/a-propos-du-tweet-contre-fn.html), and just not a welcoming dev in general. Go figure.

**Winners: Atom, Brackets**

## Conclusion
------

I think there is no objectively best editor, but it does depend on what you're looking for. Do you just want raw speed, no addons, nothing to bog your computer down, develop on Windows and don't need support? **Go Notepad++**.  Do you want a pretty fast and versatile text editor, but one that lacks documentation and customization (to the same degree as Atom)? **Go Sublime Text**. Do you work with Adobe software a lot, primarily web develop, and would rather have a faster editor than have more features and customization? **Go Brackets**. But if you're like me, who's somebody that values features, plugins, and updates over seemingly minor speed and resource management issues, **Go Atom**. It has the largest package platform out of the four options, has amazing native functionality, has the most customization available to both non-technical and tech-savvy users, is future-proof and cross-platform with Electron, and has an absolutely amazing community.


With that being said, I'm not going to yell at you, shame you, or assault you for using a different editor. Ultimately this is just a nice, gentle suggestion. If you haven't heard of Atom, Brackets, or Sublime, I suggest you try all of them out. Explore your package options, and find what suits you the best. I'm positive that you'll find your Atom out there (hehe).

Sleep well, on your hopefully good quality mattress. Have fun!

![My Atom Setup]({{site.baseurl}}/img/2016-05-31-atom-setup.png)

My Atom setup.
