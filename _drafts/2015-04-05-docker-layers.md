---
layout: post
title:  "Docker Tips #2: Limit the layers"
date:   2015-04-05
categories: docker
---

## Scenario

I want to transfer ***efficiently*** my images to the production machines

### Given
My Dockerfile with android sdk

{% highlight docker %}
FROM phusion/baseimage:0.9.16
ADD http://dl.google.com/android/android-sdk_r24.0.2-linux.tgz /opt/android-sdk.tgz
RUN tar xzf /opt/android-sdk.tgz -C /opt/
RUN rm -f /opt/android-sdk.tgz
{% endhighlight %}

built with ```docker build -t docker_layers .```

### When
I want to push it to the registry

### Then

It will push 3 layers: 

* the first is the android tgz pushed into /opt
* the second is the ```extract``` of the sdk into the /opt directory
* the last one is the deletion of the tgz

This is really not optimal, the first and third layer are useless. Worst, they use space on your filesystems, on your network when you pull/push,...

## Correction

It is a good practice to merge common operations into one single docker command.

For this example it would be:
{% highlight docker %}
RUN cd /opt && \
    wget --output-document=android-sdk.tgz --quiet http://dl.google.com/android/android-sdk_r24.0.2-linux.tgz && \
    tar xzf android-sdk.tgz && \
    rm -f android-sdk.tgz
{% endhighlight %}

In that way you only have one layer commited, and it contains only the needed android sdk extracted.

###Caveats

## Templates

The general approach is : 

* Prepare what you want to do
* Do it
* Clean everything that is not necessary


The example above is valid for all archives that must be extracted

### APT
For apt: 
{% highlight docker %}
RUN apt-get update &&  \
    apt-get install -y whatever && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
{% endhighlight %}
