---
layout: post
title: "Getting rid of the mouse: Part 1"
categories: [terminal]
date:   2020-01-21
tags: [keyboard, mouse, terminal]
---

## The Right Tool for the Right Job

> TLDR: tmux is awesome and you should install some cool plugins to improve its awesomeness

**Using the right tool for the right job** is kind of why I can't decide myself on using one programming language.

When it comes to programming, It seems to me that using the mouse is highly unefficient. 
It becomes more obvious during pair programming sessions, where you can clearly see your pair often wandering with the mouse ( I'm not saying it's useless, some people need that help them focus ).
It really breaks the flow, you are in the process of writing some code, with you both hands on the keyboard, and all of a sudden you take the mouse to, I don't know, launch the tests or click on some website your are testing.
I don't like that.

What I try to do on a daily basis is find where and when my mouse is breaking my flow.

This (I hope) will be a series of articles where I take one parts of my working flow and try to get rid of the mouse.

## The git flow

Working on an new task

`git co -b my_branch_name`

...

Doing some stuff

...

`git add file1`
`git commit -m"meaningful commit message"`

`git push` and **BAM**

```bash
fatal: The current branch my_branch_name has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin my_branch_name
```

First break flow. I take my mouse, I select this code and I copy/paste it.

When I push a new branch (tested with `github` and `gitlab`) you usually get a message specifying that you can create a Pull Request / Merge request by following a given link

```bash
Total 0 (delta 0), reused 0 (delta 0)
remote: 
remote: Create a pull request for 'my_branch_name' on GitHub by visiting:
remote:      https://github.com/agileek/agileek.github.io/pull/new/my_branch_name
remote: 
To github.com:agileek/agileek.github.io.git
 * [new branch]      my_branch_name -> my_branch_name
Branch 'my_branch_name' set up to track remote branch 'my_branch_name' from 'origin' by rebasing.
```

Second break flow. I take my mouse, and middle click on the link to open the PR. After that, I create the PR using my mouse all the way.

