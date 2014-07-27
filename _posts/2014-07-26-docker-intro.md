---
layout: post
title:  "Introduction to Docker"
date:   2014-07-26 19:18:39
categories: docker
published: false
---
![Docker][dockerImage]

Today I will talk to you about [Docker][docker].

It has become a revolution in just a few months, whereas it wasn't production ready yet. But what is docker?

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

#Hands on
{% highlight bash %}
$ sudo gem install jekyll
Building native extensions.  This could take a while...
ERROR:  Error installing jekyll:
	ERROR: Failed to build gem native extension.

        /usr/bin/ruby1.9.1 extconf.rb
/usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': cannot load such file -- mkmf (LoadError)
	from /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require'
	from extconf.rb:1:in `<main>'


Gem files will remain installed in /var/lib/gems/1.9.1/gems/fast-stemmer-1.0.2 for inspection.
Results logged to /var/lib/gems/1.9.1/gems/fast-stemmer-1.0.2/ext/gem_make.out
{% endhighlight %}

It didn't work on my computer... and since i'm a lazy person, I get tired really fast when things don't work like expected.

On the other side I'm a huge [Docker][docker] fan, so I looked for a dockerized jekyll and I found this one: [Jekyll with docker][jekyll-docker].

In 3 steps, this blog was on:

{% highlight bash %}
# Added alias to use 'jekyll' command easily
$ echo alias jekyll=\'sudo docker run --rm -v \"\$PWD:/src\" -p 4000:4000 grahamc/jekyll\' >> ~/.bash_aliases
# Create a blog in 'blog' directory
$ jekyll new blog
$ cd blog
# Serve the blog on http://localhost:4000 and automatically reload on file changes
$ jekyll serve --watch
{% endhighlight %}

This was painless for me, as someone else already had a jekyll correctly installed and working in a docker environment.

Thanks [Graham Christensen][grahamc]!

[jekyll]:    http://jekyllrb.com
[docker]:    https://www.docker.com/
[source]: https://www.docker.io/the_whole_story/
[docker_vs_virtualbox]: /images/posts/2014-07-26/docker_vm.jpg