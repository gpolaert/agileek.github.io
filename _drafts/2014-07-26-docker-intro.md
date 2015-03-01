---
layout: post
title:  "Everything I wanted to know when I started using docker"
date:   2014-09-21 19:18:39
categories: docker
---
![Docker][dockerImage]{: .banner}

I am a huge [Docker][docker] fan.

I started using it a few months ago, before it was officially "production ready" (whereas everybody was already using it in production), and it took me a while to understand all the concepts brought by docker.

## Explanations

### Virtualization
There are 3 kinds of virtualization :
1. Hypervisors
    1.MicroKernel (Xen, Hyper-v)
    2. Monolithic (VirtualBox, ...)
2. Containers (Chroot, LXC, Docker, ...)
3. Applicative (Dalvik)

The most used by developers is the Monolithic one, it emulates a complete OS on top of your current OS.
Whereas it has a lot of benefits (easy to use), it suffers from a lot of things (Use a lot of resources, can't be easily shared,...)

On the other side existed the containers, which are "process encapsulation", they use the host OS and resources "directly", but in a secure way, where they cannot interact with other processes outside their jail.

![Docker vs VirtualBox][docker_vs_virtualbox]


[jekyll]:    http://jekyllrb.com
[docker]:    https://www.docker.com/
[source]: https://www.docker.io/the_whole_story/
[docker_vs_virtualbox]: /images/posts/docker-intro/docker_vm.jpg
[dockerImage]: /images/posts/docker-intro/docker_banner.png
