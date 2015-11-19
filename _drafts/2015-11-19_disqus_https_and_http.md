---
layout: post
title:  "Disqus and github pages, http vs https"
date:   2015-11-19 14:00:00
categories: jekyll
---

The comments on my blog are powered by Disqus, and it works really well. Almost really well, actually.

I'm using github pages (Which serve HTTP and HTTPS pages) and I wanted to force to HTTPS.

Why HTTPS ?

 - [Firefox starts to deprecate non secure HTTP][firefox_http]
 - [Https as a ranking signal on google][google_https]
 - [Let's Encrypt is trusted!][letsencrypt][^1]

### Let's do it

I found this gist to force the HTTPS redirection

{% gist konklone/9968713 ssl-redirect.html %}


[jekyll]:  http://jekyllrb.com
[firefox_http]: https://blog.mozilla.org/security/2015/04/30/deprecating-non-secure-http/
[google_https]: http://googlewebmastercentral.blogspot.fr/2014/08/https-as-ranking-signal.html
[letsencrypt]: https://letsencrypt.org/2015/10/19/lets-encrypt-is-trusted.html
[^1]: Ok, this is not relevant here since I'm using GitHub's certificates, but Let's Encrypt is just too huge to not talk about. I will soon write an article about it.
