---
layout: post
title: "Login to aws ecr using systemd"
categories: [docker, terminal]
date:   2017-07-18
tags: [aws, ecr, docker, systemd]
---


At EasyMile, we use aws ECR to manage the docker images

> Amazon EC2 Container Registry (ECR) is a fully-managed Docker container registry that makes it easy for developers to store, manage, and deploy Docker container images.

For someone to be able to store/retrieve docker images, you have to be authenticated. aws cli provides a commands which takes your credentials and generate a token, authenticating the user for 12 hours.

Our continous integrations servers need to access to the ECR so we had to provide a mechanism.

The first idea was to use 2 crons:

* The first on @reboot, to ensure the machine will be authenticated upon reboot.
* The second every 11 hours.

This was a not good enough idea, since sometimes it didn't work, but we didn't know why and it was difficult to investigate. (The @reboot didn't work at all, since it appears to only work as root user and we weren't using root)

So we used systemd and:

* it just worked
* we can monitor the executions

Here is the unit located here: /etc/systemd/system/docker_ecr_login.service

{% highlight bash %}
[Unit]
Description=Docker aws ecr login
Wants=network-online.target
After=network.target network-online.target

[Service]
Type=oneshot
User=builder
ExecStart=/usr/bin/bash -c '$$(/usr/bin/aws ecr get-login --no-include-email)'

[Install]
WantedBy=default.target
{% endhighlight %}

Dont forget to ```systemctl daemon-reload``` and ```systemctl enable docker_ecr_login```
