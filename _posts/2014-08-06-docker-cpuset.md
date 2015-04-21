---
layout: post
title:  "Playing with docker and cpuset"
date:   2014-08-06 23:26:31
categories: docker
---

For my client I need to benchmark a multi-threaded/multi-server solution.

Unfortunately, we only have a big server (128 GB, 32 cores,...) and we are putting all our instances on this single server.
As each instance is multi-threaded, we noticed that they often get in each others way, resulting in bad performances (context swapping, ...).

We solved this problem with 2 solutions.

We used thread affinity in the application in order to bind some thread to a given CPU, and we used [docker][docker] to authorize a given application to access only some CPUs (via cpuset).

In order to be sure that docker was correctly restricting the access to the CPUs, I created a [docker image][docker-image]:

If you run it with

{% highlight bash %}
$ docker run -ti --cpuset=6 agileek/cpuset-test
{% endhighlight %}

it will take one cpu (the 7th) at 100%.

You can see it in action:

<div class="video-container">
  <iframe src="https://www.youtube.com/embed/1BMKK812y5A" frameborder="0" width="800" height="600" allowfullscreen></iframe>
</div>

If you run it with
{% highlight bash %}
$ docker run -ti --cpuset=0,4,6 agileek/cpuset-test /cpus 3
{% endhighlight %}

it will take all available CPUs (the 1st, 5th and 7th)

You can see it in action:

<div class="video-container">
  <iframe src="https://www.youtube.com/embed/ITcyeL8V35I" frameborder="0" width="800" height="600" allowfullscreen></iframe>
</div>

[docker]:    https://www.docker.com/
[docker-image]: https://registry.hub.docker.com/u/agileek/cpuset-test/
