---
layout: post
title:  "Poste de dev avec docker et ansible"
date:   2015-04-13
categories: docker
---
![meme][meme]
Vous avez un projet où il faut 3 jours d'installation acharnée en suivant un wiki obsolète pour réussir à faire un premier commit?

Vous n'osez plus mettre à jour votre poste depuis 2006 de peur de ne plus pouvoir travailler?

Vous en avez marre d'oublier de mettre à jour le wiki chaque fois qu'il faut installer quelque chose de nouveau pour votre projet?

Ce post est fait pour vous !


## Idée originale

A mes débuts chez Orange Business Services (en fait, c'était CVF, puis MBS, puis OBS et maintenant OAB...), je suis tombé dans une super équipe avec laquelle j'ai appris énormément de choses. Je travaillais sur une partie écrite en Erlang, et j'avais été impressionné car en quelques minutes, j'avais un environnement de travail de base prêt à l'emploi, léger et entièrement customizable.

C'était à base de chroot (Ils ont écrit 2 articles à ce sujet, le premier sur la [création d'une chroot][creer_chroot] et le deuxième sur la [connexion à cette chroot][connecter_chroot])

[meme]: /images/posts/docker-ansible/meme_post_fait_pour_vous.jpg
[creer_chroot]: http://www.barreverte.fr/creer-un-chroot-part-1-un-linux-de-base/
[connecter_chroot]: http://www.barreverte.fr/creer-un-chroot-part-2-se-connecter/
