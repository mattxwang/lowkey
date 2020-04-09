---
title: 'CS 131 (programming languages), Part 1'
date: 2020-03-25 02:34:50 Z
categories:
- dev
author: 'matt()'
layout: post
published: false
---

*There's a lot I want to say for this post. I'm going to split it up over several parts, to make it more manageable for me and you.*

I just finished my winter quarter at UCLA! The tail-end of it was quite strange, with a transition to online classes and taking finals online (an awful experience). Since I'm basically self-quarantined in LA right now, I want to spend some time to word-vomit some thoughts in blog post form, and I want to start with one of the more interesting classes I've taken at UCLA: CS 131, Programming Languages.

I want to quickly pre-empt a common critique: my aim with this post is not to bash on Eggert, nor is it to simply complain about the class. I want to spend some time to deconstruct my experience taking it, talk a little bit about what I learned, and hopefully shed a little insight into how this class functions, and how it can be better. This is not a roast, attack, or an attempt to throw shade; I'd like to think it's a genuine and honest reflection.

As with many of my posts, this'll be a pretty long, mostly poorly written blob. Feel free to skip around certain sections (denoted by headers) if you want, they're mostly self-contained.

## A Quick Primer on CS 131

CS 131 is an "upper division" computer science course at UCLA: the delineation between upper division and lower division isn't terribly black-and-white, but you can think of them as more in-depth, advanced undergrad classes.

To take CS 131, you need to already take all the typical introductory computer science classes: CS 31 (Programming Fundamentals in C++), CS 32 (Data Structures in C++), CS 33 (Computer Organization), and CS 35L (Software Construction Laboratory, more on that later). This is mostly equivalent to the common classes that computer science students take in their first and second years at most universities, so nothing surprising there. Comparatively though, CS 131 is usually not taken early on by most UCLA CS majors - they typically take Operating Systems (CS 111) and Algorithms (CS 180) first, and anecdotally I'd say most of my class was filled with third and fourth years. I ended up taking the class in part because I really enjoy the topic, and in part because I scheduled my courses slightly differently than recommended (rushed classes to take 180 in fall quarter of second year, took 33/35L concurrently in first year).

## An Interlude on Prof. Eggert

CS 131 is typically taught by Professor Paul Eggert at UCLA. He's a well-known professor for some reasons, and notorious for others.

On one hand, he's an amazing lecturer and clearly very knowledgeable about computer science in both breadth and depth; unlike many research professors at UCLA, Eggert is primarily a lecturing professor: teaching is his top priority, and from a lecturing perspective, it shows. He's a part of computer science history; take a look at this quote from the [GNU's who's who list](https://www.gnu.org/people/people.en.html#p):

> Paul Eggert has contributed to many GNU packages, including Emacs, GCC, Automake, Bash, CVS, Ghostscript, Grep, Groff, Gzip, and Make. Currently he maintains or co-maintains Diffutils, Patch, RCS, Tar, Gzip, and the tz database, and also contributes to Autoconf, Bison, Coreutils, the GNU C library, and Gnulib.

In other words, he maintains and contributes to software that supports much of the modern web (I'd guess that tar and gzip are used hundreds of thousands if not millions of times a day). So, when we learn about the software and principles that underpin these tools, we're almost learning it directly from the source. As an aside, he often makes homework assignments for CS 35L that prominently feature him (I remember a tongue-in-cheek part of the homework that asks who the maintainer of a tool is, and it's him). And, he's even [written a book with Richard Stallman](https://www.amazon.com/Comparing-Merging-Files-diff-patch/dp/0954161750), which is kind of nuts (kind of like Richard Stallman).

On the other hand, Eggert's classes are notoriously difficult, and if anything, set up students to fail and cheat. CS 35L is probably the best example of this; take a look at some of the [Bruinwalk reviews](https://www.bruinwalk.com/professors/paul-r-eggert/com-sci-35l):

> If I had known about Eggert before coming to UCLA, I wouldn't have come to UCLA.

> I had a great TA (Zhaowei the GOAT), but still got absolutely assfucked by this class. Here are some tips for you so that you don't have the same shit ass experience I did:
> Step 1: Don't take the class
> Step 2: If you have to take it, get really familiar with the material from the first four assignments before week 1 so you have a crazy good advantage.
> Tough it out for the first 4 weeks and you'll be good in terms of managing workload. The final was a straight clap, no amount of studying could have prepared me for that bullshit. Sure, I learnt a lot, but this class is broken.

> This class need a complete reform. It is not professor Eggert's fault but someone in CS department have to do something with it. Once again, everything in this class is a disaster and need a complete reform. Materials in the syllabus are useful but they are so poorly taught that we would rather study the same thing on our own during summer holiday.

CS 131 is less notorious, but still a tricky class. As we'll find out together, some of the homework assignments are just brutal. Take a look at [these Bruinwalk reviews](https://www.bruinwalk.com/professors/paul-r-eggert/com-sci-131) when you have a chance:

> Eggert's class never fail to piss me off. The amount of work required for this class is ridiculous, and the pacing is just way too fast. On top of that, we all know Eggert writes these impossible exams where the average is 40%. I put so much time into this class and still struggled. No one really knows what's going on and everyone copies code off Github.

> I decided to transfer after this class, now Im enrolled in CalPoly, and now I regret my first decision to attend ucla for cs.
> With these non-sense classes, you'll waste a great amount of time.

I do want to say that this is an extremely complicated topic, and I won't cover it at length in this post - Eggert and his classes pop up every yearly CS Town Hall, and any CS major at UCLA falls somewhere on this issue. Recently, students have worked with the CS Department to make CS 97, a new version of 35L that tries to address its concerns; I assume if that goes well, we'll see more modifications to CS at UCLA. But in the meantime, we've just got to make do with what we have, and look to learn the best we can in the situation we're in.

So, let's do that.

## A First Look at Programming Languages: Principles

CS 131 is a programming languages class. At most universities, these types of courses have two key goals:

1. on the surface, teach students a variety of programming languages
2. more importantly, teach students the fundamentals of programming languages, so **they can pick up any language**

I think these goals make sense. A course that just teaches students a variety of programming languages is bound to be outdated, as languages add new features, new paradigms are invented, and specialized programming languages wax and wane in popularity. A course that just teaches students the fundamentals of programming languages without concrete examples (i.e. examining types in general) is bound to be too abstract to grasp and apply in real-life. The trick is to find the balance between these two obligations: to go deep enough in each language to truly understand what makes it special, but not too deep as to not examine another core language.

Notice that I didn't put any semblance of learning *useful* or *popular* programming languages. If taught right, that shouldn't matter. If you have a strong grasp of imperative programming (which most CS majors do), it *shouldn't matter* if you start by learning C or Java or Python in-depth; switching between the three, with enough practice, will be effortless. However, if you don't study a functional language at all, it becomes hard to think in a functional mindset and write pure code - so even if you study OCaml, Racket, Common Lisp, or F# (and subsquently never use those languages in production), it still provides a valuable experience.

That's a tricky strategy to swallow, because it's essentially a very, very long-term investment. You'll spend a quarter (or a semester) learning languages with the professor telling you that you'll never use them; and yet, you're still expected to stay motivated.

But in some senses, that's part of the challenge.

## An Aside on Fundamentals

I really want to hit home how important it is to learn the true fundamentals of programming languages. I don't just mean conditionals, and loops, and functions, even though those are important; I mean understanding how types, dynamic memory, or concurrency actually function in a language.

Anecdotally, I think that there are two seemingly insurmountable mountains that students face when learning coding. The first is what makes introductory programming and data structures classes hard: an unfamiliarity with syntax, or being unused to thinking about problems in a deconstructable manner, or core paradigms like looping and recursion. I think with the right teacher and the right course, **anybody** can learn these things; the unfortunate reality is that most people don't have either.

A good understanding of basic programming takes you a long way, and it's usually good enough to get you through most basic software engineering. If you have a solid foundation in intro programming, data structures, and simple algorithms, you're qualified for most CS internships; you have enough programming knowledge to make most simple types of applications; you have about 90% of the knowledge that programmres practically apply on a day-to-day basis (excluding people like embedded systems/OS developers, machine learning engineers, etc.).

In fact, I think it's also enough to make you fluid enough to pick up most (imperative) languages. If you truly understand the concepts that you learn in an intro C++ class, you should be able to pick up Go comparatively easily: just go through a Go tutorial, look up the key differences between C++ and Go, and you should be set! Anything you could've done in C++, you can probably do in Go. 

This is the attitude that I used to take to learn programming languages. I wanted to learn Ruby? No problem! It's pretty similar to Python, so I just need to figure out how code blocks work, what the keywords are, and how to write OOP code. There I go, another scripting language in the toolkit.

But, not quite.

That approach misses out on the purpose of a programming language, and what truly sets it apart from other languages. Yes, it's important to know how to do basic constructs, and what the keywords are, and how to write "Hello world!". But without understanding the design decisions *behind* a language, and the sets of problems that it tries to solve, you probably won't use it to its full potential. If you start with C++, and copy-paste C++'s coding style and semantics to Go, you'll never take advantage of its significantly more robust type system, concurrency via goroutines, or strong in-built support for tests. You'll just take your C++ paradigms to Go.

And this is what I really wanted to learn. Even before I started this course, I loved reading about the popular languages of the day and what set them apart from the pack (think Go, Haskell, Rust, etc.). It's not the sexiest topic, but I think it's truly fascinating: as a software engineer, I'll spend hundreds if not thousands of hours with different programming languages. Why not learn why they're different?

Occasionally, I'll meet people who have this foundational knowledge ingrained into how they program. And sometimes, it's just stunning. They write elegant and efficient code. They pick up new programming languages in mere hours, or days. And they are truly rockstar developers. Not to put them on a pedestal too much, but I really enjoy meeting these types of people: and even if I'm not one of them, it's a nice idea to shoot for.

## A First Look at CS 131: The Flyover

Like most classes, CS 131 has three main types of grading: homework, midterms, and a final exam. [As you can see from the course website](http://web.cs.ucla.edu/classes/winter20/cs131/grading.html), the grading scheme is as follows:

* 32% homeworks
* 24% midterm
* 44% final exam

In other words, doing your homework is... pretty important! Good learning involves practice, and making homework matter is one way to enforce practice (in theory).

Homework is also the framing device used to study the languages we look at in the course. Here's what that looked life for me:

1. Homework 1 - OCaml
2. Homework 2 - OCaml
3. Homework 3 - Java
4. Homework 4 - Prolog
5. Homework 5 - Scheme
6. Project - Python
7. Homework 6 - Dart (kinda)

It turns out, Eggert doesn't really change the class that often; except Homework 6 (which changes every now and then), the rest of the homeworks cover the same topics, with the same languages and the same types of problems.

Homework is also maybe a bit reductive. Homework 2, for example, easily took me 20 solid hours of work, and was probably the hardest thing I did this quarter: it required more effort than any of my midterms, long-ass lab reports (27 pages! but that's a story for another day), and probably more than any of my finals.

The midterm tests you on the content from Homework 1 - 3 (so in our case, OCaml and Java), and the final tests you on everything (though ours was online, which I'll talk about in a bit).

So hah! Basically, you know the entire class! Right!

## A Second Look at Programming Languages: Imperative, Functional, and Logical

Both Eggert and the textbook for the class ([Modern Programming Languages: A Practical Introduction, 2nd edition](https://fbeedle.com/our-books/13-modern-programming-languages-a-practical-introduction-2nd-ed-9781590282502.html) by Adam Brooks Webber) split up the major programming languages into three different types: *imperative*, *functional*, and *logical*. Here are Eggert's definitions, paraphrased:

* **imperative** languages are your typical, sequential programming language. Each expression is a command, and programs are (more or less) a sequential list of commands. Most mainstream languages (like C, Python, or Java) are imperative.
* **functional** languages are languages that focus on pure functions and avoid side effects. Each expression is a set of (pure) functions, and programs are functions composed with each other. When people teach functional programming, they usually look at mostly pure languages like OCaml, Haskell, and most dialects of Lisp (e.g. Scheme, Racket, Common Lisp); however, Javascript has many elements of a functional programming language, and Python has some.
* **logical** languages are grounded in philosophical logic and predicate calculus. Each expression is a predicate, and programs are predicates hooked together with logical operators. We learned Prolog as our logical language for this class.

While programming languages are not evenly divided in these three categories, they are nevertheless a good lens to analyze programming languages. In particular, I liked Eggert's explanation of the core difference between these languages: they differ in what expressions are (commands, functions, or predicates), and how they are linked together (sequential lists, function composition, logical operators). If none of that made sense, I'll try my hand at explaining each of those, as we go through the course.

Why is it important to view programming languages through this lens? Well, most of my (and probably your) programming experience is fully in imperative programming. Introductory CS classes are usually taught in some combination of C++, Java, and Python (all primarily imperative languages), and the programming fundamentals involve imperative constructs and problem solving techniques, like loops. Most software engineering applications use imperative languages, as do most upper-division CS classes at UCLA (C, Javascript, etc.). As students practice and use imperative programming, they think imperatively. And use loops.

Don't get me wrong, there's nothing bad about loops (okay, there might be some bad things about loops). But locking yourself into an imperative mindset is restrictive. In particular, side effects like global variables and state are one of the largest pain points for developers, both in terms of debugging and writing clean code. Again, more on side effects later.

Exploring functional programming changes that. It fundamentally changes how you think about problems, tackling them using recursion, curried functions, higher-order functions, and ... functions. A lack of side effects make parallelism significantly easier (think MapReduce), make your code significantly easier to test (no need to mock global state), and when done properly, allow for an amazing amount of abstraction. More on this later when we explore OCaml!

In sum, I'm a huge proponent of teaching functional programming: I think every software engineer should at least understand it as a paradigm and *why* it exists. I try to make my code side-effect free as much as possible (which was huge when I wrote embedded systems code for Booz Allen), and I think this class has lit a fire inside of me to make more of my code functional.

I think the argument for logical programming is a bit less clear-cut. Eggert highlights **unification** (we'll go a bit more in-depth later) as a key concept to learn from Prolog, but I don't find it as enlightening as tail recursion or map & reduce (again, more in-depth later). It's totally possible that I just didn't fully understand the significance of logical programming, but I'm not so convinced (even after reviewing my notes + the textbook).

Okay, I think that's enough blabbering. Let's dive into the course content, abridged.

## An Aside on Grammar

For our iteration of CS 131, Eggert actually did not discuss any specific programming language until the tail end of our third lecture; he only introduced coding and programming in our fourth lecture. Strange, considering we already had homework due in a language that we did not discuss in class (OCaml!).

Instead, Eggert focused on syntax and semantics (after an interesting historical interlude on TeX and Donald Knuth). *Syntax* is the form of a language, independent of its meaning; *semantics* is the meaning of a language, ideally independent of its form. Eggert introduces the sentence "*colorless green ideas sleep furiously*", which is syntactically correct (i.e. valid English grammar) but has no reasonable meaning; he also discusses "*Ireland has leprechauns galore*", which he says has a clear meaning but ambiguous syntax (what part of speech is galore?). I think this is an interesting discussion to have, though I'm not sure if it's the best use of time - we do only have 10 weeks after all - but it does inform some of the later coursework that we do.

Then, he moves on to *grammars*, which define how a language works. We go over context-free grammar, specifically looking at BNF ([Backus-Naur Form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form)) and different EBNFs (Extended BNFs). I won't go into the details here too much, partially because it's tricky to type out and partially because I don't really want to. We also discuss things like tokens and tokenizers, keywords and reserved words, and syntax diagrams.

I thin the study of these grammars is relevant (especially if you take a compilers class in the future, which is something I'm interested in). However, I didn't find them particularly helpful or practical in the grander scheme of this course: while we trivially use the grammar formats we've described to analyze some of our languages, the analysis is not super deep. And, as Eggert points out, context-free grammars (which you can just think of as a cool structured way to specify grammars) do not solely underpin programming languages: programming language specifications are too monstrous and unwieldly to be governed by a simple set of rules.

My opinion on this might change in the future (especially if I do end up taking that compilers class), but for now, I think I'm content with glossing over the details. I'll see if this bites me later on in life.

## OCaml: A Foray in Functional Programming

In this section, I'll basically condense and summarize my lecture notes. This is the language I'll examine the most in-depth, partially because that's how the course was structured, and partially because I enjoyed learning about OCaml - the first language we examined.

[OCaml](https://ocaml.org/) is a multi-paradigm (but importantly for us, functional) programming language developed by French researhces at [INRIA](https://en.wikipedia.org/wiki/French_Institute_for_Research_in_Computer_Science_and_Automation). It is a dialect of [ML](https://en.wikipedia.org/wiki/ML_(programming_language)), a historically significant functional programming language that shaped the paradigm of functional programming; the ML family also includes [Standard ML](https://en.wikipedia.org/wiki/Standard_ML) and [F#](https://fsharp.org/), and has inspired more modern functional languages like [Haskell](https://www.haskell.org/).

Okay, enough with boring history. Let's see what makes OCaml different, and importantly, let's see some code.

### OCaml, the Absolute Basics

At first glance, OCaml has some familiar characteristics. It is interpreted (like Python), but has static typing (with type inference, but more on that later); that means that types are checked and inferred when the program is loaded, not when the code runs. Let's look at some familiar code:

```ocaml
$ 5 * 5 + 5 * 5;;
- : int = 50
```

I'll use the `$` to represent something you'd type into a REPL (e.g. what you get if you type `ocaml` int your terminal), and the following line with `- : ...` is what the REPL returns. In this case, you'll see that the interpreter tells us the answer to the computation (50), but it also tells us its type. This is nice, because we didn't actually explicitly specify the type of the input parameters, and somehow, OCaml guessed them. More on that later.

And, another quick note: `;;` is the end of a statement. Nothing too spicy there.

OCaml lets you initialize variables, and use them elsewhere. You'll use the `let` keyword to create a binding (which is not a variable, something we'll talk about in a bit).

```ocaml
$ let answer = 42;;
val answer : int = 42
$ answer * 2;;
- : int = 84
$ answer / 2 ;;
- : int = 21 (* we see that int/int = int *)
```

Ooh, and now we know `(* *)` is a comment.

So far, we've played around with just integers. What other types does OCaml have?

```ocaml
$ let greeting = "hello there";;
val greeting : string = "hello there"
$ let pi = 3.14;;
val pi : float = 3.14
$ let is_everything_alright = False;;
val is_everything_alright : bool = False
```

However, OCaml is designed to be primarily functional. One of the most shocking things first-time OCaml users will find is that variable reassignment is not allowed.

```ocaml
$ let answer = 42;;
val answer : int = 42
$ let answer = 50;;
(* this is kind of an error, but we'll talk about it in a bit *)
```

In some senses, these things aren't variables then - which is why they're called *bindings*. It's more about shorthand for an expression, and less of a pointer style of thinking. One of the advantages of this is *referential transparency*: when you see a name, you can more or less look it up in a table and substitute its value at compile-time. Compare that to global variables in a language by C, that can be changed by any process at any time; or with loops.

So, what actually happens? Why did I say it's kind of an error? Well, in OCaml, when you redefine a variable, there's something called *shadowing* that goes on. But first, I need to very quickly introduce scoping and `let ... in`

```ocaml
$ let answer = 42 in
    10 + answer;;
- : int = 52
```

Everything that follows the `in` gains `answer` as a valid binding. Outside of a REPL/the top-level, this is the only way that you should be using bindings.

So, what's shadowing?

```ocaml
$ let derp = 1 in (* after the =, derp is 1 *)
    let flerp = 2 * derp in
        let derp = 2 in (* after the =, derp is 2 *)
            let slurp = 2 * derp in
                derp + flerp + slurp
            ;;
```

Basically, when a variable is "redeclared", for the scope of the block, we can just pretend that the earlier declaration was never used. Sometimes, this helps write some very elegant code, and I think it's a neat feature. There's more to talk about, but I won't really delve into it here.

### Functions in OCaml

Okay, this is a functional programming language, so let's talk about functions. Here is how we can define a very basic function:

```ocaml
$ let f x = x + 1;;
val f : int -> int = <fun>
$ f 3;;
- : int = 4
```

`f` is the name of the function, and `x` is is first parameter. The return statement says that f is a function that maps an int to an int (you can think of this mathematically, with a domain and range). Seems reasonable so far.

We can also note that we declared it as a binding. This is part of one of the biggest lessons of OCaml: functions are **first-class citizens**, so they can be treated like any other data type, and therefore you can bind them to things.

What is actually being bound to `f`? An anonymous function:

```ocaml
$ let f x = x + 1;;
val f : int -> int = <fun>
(* is the same thing as *)
$ let f = (fun x -> x + 1);;
val f : int -> int = <fun>
```

Anonymous functions are just that: functions without a name. They're quite powerful, and you might've seen them in Javascript or Python. More on that later too.

Something that's also cool here is OCaml's type inference. So far, we have not annotated the types at all in any of our expressions. Yet, OCaml knew that this was a function that took an int to another int.

How? Well, in OCaml, the `+` operator only operates on ints (you use `+.` for floats, and it's not overloaded for string concatenation). And, as a bonus, 1 is an integer. The only valid thing x could be is an integer. So, OCaml knows what type x must be.

What if it can't guess?

```ocaml
$ let f x = x;;
val f : 'a -> 'a = <fun>
```

In this case, OCaml inserts a generic parameter, `'a`. This can be a binding with any type. To me, this is super elegant: it supports generic programming in a very clean and intuitive way (compared to some of the clustering in Java or C++). More on this in a bit.

In addition, another consequence of functions as first-class citizens is that you can pass functions to other functions.

```ocaml
$ let f x = x * 2;;
val f : int -> int = <fun>
$ let scale8 g = g 8;;
val scale8 : (int -> 'a) -> 'a = <fun>
$ scale8 f;;
- : int = 16
$ scale8 (fun x -> x - 1);;
- : int = 7;
```

This useless function shows us that we can pass functions to other functions! Take a look at that signature for `scale`: the `(int -> 'a)` means that OCaml is looking for a function that maps an int to any type; our function, which is `int -> int`, certainly fits that signature. Type inference is looking more powerful by the minute.

We can declare functions with multiple parameters:

```ocaml
$ let f x y = x * y;;
val f : int -> int -> int = <fun>
$ f 27 37;;
- : int = 999
```

Seems reasonable. But wait, what's going on with that function signature?

This has to do with a concept called *currying*, which is very popular in functional languages and named after logician and mathematician [Haskell Curry](https://en.wikipedia.org/wiki/Haskell_Curry) (Haskell is also named after him). Essentially, currying says that functions with multiple parameters are really just many single-parameter functions chained together.

```ocaml
$ let f x y = x * y;;
val f : int -> int -> int = <fun>
$ let f = (fun x -> (fun y -> x * y))
val f : int -> int -> int = <fun>
```

Well that seems like it's not that useful. But it turns out, it is:

```ocaml
$ let f x y = x * y;;
val f : int -> int -> int = <fun>
$ f 3;;
(* what gets outputted here? *)
```

In other languages, calling a function with less arguments than there are parameters will either give you an error or leave those variables uninitialized (the latter of which I think is a bad design pattern, *cough* Javascript). Let's see what happens in OCaml:

```ocaml
$ f 3;;
- : int -> int = <fun>
$ let multiplyBy3 = f 3;;
val multiplyBy3 : int -> int = <fun>
```

OCaml will partially evaluate the function; in other words, it'll "fill-in" what it can with the definition provided, and leave the rest to be another anonymous function. This is a really powerful feature, and it was very clutch for our homework + some other applications that I cooked up in my free time.

This covers most of the beginner-level information about functions (other than recursion, which I'll cover in a bit). There are some other topics that I didn't cover, like nested functions, but I think they follow logically from what we've discussed.

### Lists, Tuples, and ADTs in OCaml

Before we go into some of the super cool stuff, let's quickly talk about some data structures.

Lists in OCaml are somewhat like lists in other languages. They can be of any length, but every item needs to be the same type.

```ocaml
$ [1;2;3];;
- : int list = [1; 2; 3]
[1;"hi";3];;
(* not allowed *)
```

We will discuss iterating through lists later; for now, all you need to know is that subscript indexing is not explicitly built into the language in the same way that it is in Java or Python (though there is an [`nth` function in OCaml](http://caml.inria.fr/pub/docs/manual-ocaml/libref/List.html), but it isn't O(1)).



### Control Flow, Pattern Matching, and Recursion in OCaml

### OCaml, TL;DR

