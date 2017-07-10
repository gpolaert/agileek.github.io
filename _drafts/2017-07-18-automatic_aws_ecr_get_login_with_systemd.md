---
layout: post
title: "Login to AWS ECR using systemd"
categories: [docker, terminal]
date:   2017-07-18
tags: [aws, ecr, docker, systemd]
---


## First try without systemd

At EasyMile, we use AWS ECR to manage the docker images.

> Amazon EC2 Container Registry (ECR) is a fully-managed Docker container registry that makes it easy for developers to store, manage, and deploy Docker container images.

For someone to be able to store/retrieve docker images, you have to be authenticated. AWS CLI provides a command which takes your credentials and generate a token, authenticating the user for 12 hours.

Our continous integration servers (ie. Jenkins nodes) need to access to the ECR so we had to provide an automatic mechanism.

The first idea was to use 2 crons:

* The first on @reboot, to ensure the machine will be authenticated upon reboot.
* The second every 11 hours.

This was a not good enough idea, sometimes it didn't work but we didn't know why and it was difficult to investigate. (The @reboot didn't work at all, since it appears to only work as root user and we weren't using root)

## Systemd

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

Now we only use one cron, every 11 hours it launched ```systemctl start docker_ecr_login```


### Investigate

Now it's easier to monitor past executions with:

{% highlight bash %}
$ journalctl -u docker_ecr_login
-- Logs begin at Fri 2017-05-19, end at Mon 2017-07-10. --
Starting Docker aws ecr login...
docker_ecr_login.service: Main process exited, code=exited, status=217/USER
Failed to start Docker aws ecr login.
docker_ecr_login.service: Unit entered failed state.
docker_ecr_login.service: Failed with result 'exit-code'.
{% endhighlight %}

The error status 217/USER means that the user 'builder' doesn't exist on this system.

### ToDo

We are looking into systemd timers with something like ```OnUnitActiveSec=``` we should be able to completely get rid of cron and go full systemd.
