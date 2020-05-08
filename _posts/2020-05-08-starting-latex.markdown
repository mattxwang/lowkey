---
title: 'An Interlude: Starting LaTeX'
date: 2020-05-08 02:34:50 Z
categories:
- dev
author: '$matt$'
layout: post
---

Wow, life has been really hectic for me for the past few weeks, and I never got around to finishing that CS 131 reflection. In fact, there are quite a few things that I'm not getting around to finishing; I'd say that quarantine is hitting me pretty hard.

I do want to make one quick observation: while I've started many bad habits this spring quarter, one that I'm happy with is that I've started to use [LaTeX](https://www.latex-project.org/) for my math (and some computer science) homework.

If you're not familiar, LaTeX (and TeX) is a very popular typesetting system. Unlike word processors like Microsoft Word or Google Docs, where you can highlight text and apply transformations to it directly (called "What You See Is What You Get", or WYSIWYG), LaTeX is instead a *markup* language: you'll write what is basically code to represent your text, and the TeX will "compile" it for you to create the final, formatted product. It's like Markdown, but on steroids.

LaTeX is very popular in academia, especially in math and computer science: I have even heard professors tell me that they treat papers typeset in Word less-seriously than papers typeset in TeX, as it shows that the researchers are amateurs. I wouldn't go that far, but I do think it produces better-quality papers than Word (and definitely Google Docs).

For most of my life, I have used Microsoft Word to format math (and the occasional CS proof). I think this is how most college students do this - you probably haven't learned anything else! But every now and then, I'd have a friend tell me that I *had* to pick up LaTeX, that it'd make my life so much easier. I've always mentally agreed that LaTeX is a really great skill to learn, but I just never got around to doing it.

Lo and behold, I'm now in online classes. And unfortunately, you can't submit written homework in the same way: yes, you can take a photo of written homework with your phone and upload it, but it looks pretty bad, and I (to be very honest) would not like to grade 20 homeworks that are taken on a phone with crappy lighting.

So, I said I'd learn some LaTeX.

## an interlude: what does LaTeX look like?

A block of LaTeX might look like this:

```latex
\section{Question 3}
  We want to show that the sequence $(x_j * y_j)$ is a Cauchy sequence if $x_j$ and $y_j$ are Cauchy sequences. In other words, we need to show for any $\varepsilon \in \mathbb{R} > 0$, there is some $N$ such that for all $m,n \in \mathbb{N} \geq N$, $|(x_m * y_m) - (x_n * y_n)| < \varepsilon$.
  \begin{proof}
    We can take a similar approach to Question 2!

    Recall that if $x_j$ a Cauchy sequence, then for any $\varepsilon_x \in \mathbb{R} > 0$, there is some $N_x$ such that for all $m,n \in \mathbb{N} \geq N_x$, $|x_m - x_n| < \varepsilon_x$. 

    Similarly, for $y_j$, for any $\varepsilon_y \in \mathbb{R} > 0$, there is some $N_y$ such that for all $m,n \in \mathbb{N} \geq N_y$, $|y_m - y_n| < \varepsilon_y$.

    We can combine these properties for $(x_j * y_j)$. Let's pick an arbitrary $\varepsilon$. Because $x_j$ and $y_j$ are both Cauchy, there exist some $N_x$ and $N_y$ such that for all $m,n \in \mathbb{N} \geq N_x$, $|x_m - x_n| < \sqrt{\varepsilon}$, and for all $m,n \in \mathbb{N} \geq N_y$, $|y_m - y_n| < \sqrt{\varepsilon}$.

    Next, we pick $N = max(N_x, N_y)$. Because $N \geq N_x$ and $N \geq N_y$, we can conclude that for all $m,n \in \mathbb{N} \geq N$, $|x_m - x_n| < \sqrt{\varepsilon}$ and $|y_m - y_n| < \sqrt{\varepsilon}$.

    Therefore, $|x_m - x_n| * |y_m - y_n| < \varepsilon$.

    We conclude that $(x_j * y_j)$ is a Cauchy sequence!
  \end{proof}
```

Yikes, that's pretty spooky. It creates something that looks like this:

![latex homework sample]({{site.baseurl}}/img/latex-hw-sample.png)

Now, I see the irony of posting an image instead of directly rendering the LaTeX in the browser, but you've got to admit, this looks pretty good.

## back to the point

And, for the past five weeks, I've been using LaTeX. A lot.

Initially, the learning curve was quite tricky: WYSIWG editors are popular because they're easier to grasp. But, after the first week, I got much better at using LaTeX; now, all of the simple things almost feel natural.

A direct consequence is that I have become faster at typing up math. I no longer have to fiddle around in menus to get something to format exactly properly; I just write it out in code. I really appreciate how easy it is to type special math symbols and the simple formatting of complicated expressions, even if fractions are kind of a pain.

A more indirect consequence is I feel like I have gotten better at proof-writing. Now that it's much easier to edit and re-edit my homework, I've done it more often - especially to make it more concise or rigorous.

And finally, I think it just looks good and professional.

I'm still no pro - I haven't fiddled with my configuration at all, using the default [MacTeX](https://tug.org/mactex/) installation and a handy VSCode plugin. I imagine that I'll eventually create more custom macros (e.g. maybe a limit-to wrapper for a function?) that make it even easier to do my homework. I think it's already paid dividends in how useful of a skill this will be, and I'm sure it'll pay even more in the future.

If you're reading this, and you do a non-trivial amount of math writing, I would strongly recommend that you pick up LaTeX! It's not as hard as it seems (especially if you use online editors like [Overleaf](https://www.overleaf.com/)), and I do honestly think that it will make you a better mathematician - or at the very least, someone who writes nice-looking math work.

Isn't that the dream?
