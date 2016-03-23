---
layout: post
title:  "Ready, Set, AlphaGo"
date:   2016-03-20 03:17:43 -0400
categories: news tech
---

Right before the recession, many people had a saying about computer AIs. A computer would destroy a human in checkers, go toe-to-toe with humans in chess, but lose to humans in Go.

**Go** [is a complicated board game](http://www.usgo.org/what-go) infinitely more complex than chess; played on a 19*19 board, there are [2.082 × 10^170](http://senseis.xmp.net/?NumberOfPossibleGoGames) legal board positions. That's more than [the number of observable atoms in the universe](http://www.universetoday.com/36302/atoms-in-the-universe/)! It's one of the most mentally complicating board games in the world, and was the Mount Everest for machine-learning and artificial intelligence in general. But why? Let's take a look at what a chess algorithm actually is.

![Chess Tree Algorithm](img/2016-03-20-chess.png "Chess Tree Algorithm")

The most commonly used algorithm in chess AI is the [tree traversal](https://en.wikipedia.org/wiki/Tree_traversal), AKA tree search algorithm. It goes through every possible move, and checks which one fits its idea of the "best" move. Complicated chess programs can go several moves into the future, and have a better curve of what makes an optimal board state; in contrast, the "easy mode" of Microsoft Chess gives the AI a limited tree path and amount of time to find the most optimal path.

That algorithm, quite unfortunately, doesn't work when there are more possible board states than atoms in the universe. Instead, AIs need to learn how to create advantageous board states with specific moves, and analyze thousands of previous games to learn styles of play and board positions. It still retains all of the predictive movement, but instead of planning out every single tree to traverse, it efficiently trawls through all the data and makes intelligent choices.

That's a level of artificial intelligence that wouldn't have been possible 10 years ago, but with the advent of machine learning in computers like [Deep Blue](https://www-03.ibm.com/ibm/history/ibm100/us/en/icons/deepblue/),  [Watson](https://www.ibm.com/smarterplanet/us/en/ibmwatson/), and [Tianhe](https://en.wikipedia.org/wiki/Tianhe-2) that opinion has changed. AlphaGo is the next big computer: after beating [Lee Sedol in a 4-1 match](https://en.wikipedia.org/wiki/AlphaGo_versus_Lee_Sedol), AlphaGo conquered the artificial intelligence seemingly-unstoppable barrier of Go, similar to [Deep Blue's win against Kasparov](https://en.wikipedia.org/wiki/Deep_Blue_versus_Garry_Kasparov). Their creators, Google DeepMind, come from the world's largest tech company: Google has created stuff like driverless cars, Google Glass, and even your everyday Gmail, Google Drive, and the classic search engine. Google's leap forward in areas of computer science like this is becoming more of the norm, not the exception. Hopefully, we'll see more stuff like this.

In an interview before the first match, Lee Sedol was confident that he could sweep this computer. In the four matches that AlphaGo won, its moves bedazzled the 9p commentators and created a new go meta. Lee Sedol was, in the end, happy to get only one match off of AlphaGo.

That being said, Lee Sedol isn't the definitive world champion; no title like that exists in Go. Yet, many are eager to see the boundaries of AlphaGo tested. It used a very unorthodox strategy, and very often was able to trick one of the top Go minds into trap after trap.  

AlphaGo is still in development and being refined; and previous human-beating computers such as Watson and Deep Blue have both since been tasked to do amazing this for humans, mainly in the field of medicine. AlphaGo blew the minds of millions of people around the world: and we haven't even hit beta yet.
