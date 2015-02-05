---
layout: post
title:  "Generate log line with Intellij and live templates"
date:   2015-02-20
categories: intellij,java
published: false
---

Editor -> Live Templates -> others -> create new

Abbreviation: log
Description: Add log line
Template text: 
{% highlight java %}
private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger($CLASS_NAME$.class);
{% endhighlight %}

Applicable in: Java: declaration

Edit variables: CLASS_NAME Expresion: className()
