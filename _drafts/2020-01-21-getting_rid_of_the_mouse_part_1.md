---
layout: post
title: "Going mouseless #1: Git push a new branch"
categories: [terminal]
date:   2020-01-21
tags: [keyboard, mouse, terminal, git]
---

> TLDR: install thefuck

## The Right Tool for the Right Job

**Using the right tool for the right job** is kind of why I can't decide myself on using one programming language.

When it comes to programming, It seems to me that using the mouse is highly unefficient. 
It becomes more obvious during pair programming sessions, where you can clearly see your pair often wandering with the mouse (I'm not saying it's useless, some people need that help them focus).
It really breaks the flow, you are in the process of writing some code, with your both hands on the keyboard, and all of a sudden you take the mouse to, I don't know, launch the tests or click on some website your are testing.
I don't like that.

What I try to do on a daily basis is find where and when my mouse is breaking my flow.

This (I hope) will be a series of articles where I take one part of my working flow and try to get rid of the mouse.

Pro-tip: Sometimes, I like to put my mouse on its back (If I had an IMouse, I could charge it) so evey access to the mouse is a consious one. Try it, I find it really interesting

## The git 'flow'

Each time I work on a new task, I satsrt by creating a new branch. 
Let's say I work on this article.

`git co -b going-mouseless-part-1`

After that I create the file, write some stuff down, the usual...

When I'm satisfied with my work, I commit

```bash
git add mouseless-article-1.md
git commit -m"meaningful commit message"
git push
```
and **BAM**

```bash
fatal: The current branch going-mouseless-part-1 has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin going-mouseless-part-1
```

I grab my mouse, I select the last line and copy/paste it. At least that's what I did.

A perfect solution for this use case is [TheFuck][thefuck].

> Magnificent app which corrects your previous console command. 

Once installed, instead of grabbing my mouse, I just type `fuck` then enter twice and that's it!

Here is a complete demo:


This tool is a really useful one, it saves me on a daily basis with everything, typos, missing sudo,... plus, it's pleasant to curse.


[thefuck]: https://github.com/nvbn/thefuck




------
When I push a new branch (tested with `github` and `gitlab`) you usually get a message specifying that you can create a Pull Request / Merge request by following a given link

```bash
Total 0 (delta 0), reused 0 (delta 0)
remote: 
remote: Create a pull request for 'going-mouseless-part-1' on GitHub by visiting:
remote:      https://github.com/agileek/agileek.github.io/pull/new/going-mouseless-part-1
remote: 
To github.com:agileek/agileek.github.io.git
 * [new branch]      going-mouseless-part-1 -> going-mouseless-part-1
Branch 'going-mouseless-part-1' set up to track remote branch 'going-mouseless-part-1' from 'origin' by rebasing.
```

Second break flow. I take my mouse, and middle click on the link to open the PR. After that, I create the PR using my mouse all the way.

