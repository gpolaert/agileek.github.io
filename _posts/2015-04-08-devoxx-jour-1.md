---
layout: post
title:  "Devoxx France : Jour 1"
date:   2015-04-08
categories: java
---

## Devoxx France

![Devoxx][devoxxFrance]

## 09:30-12:30 [Google Cloud Platform][hands_on_GCP]

### Présentation de Google Cloud Platform par David Gageot et Ludovic Champenois.

J'ai hésité avec "Quand Devops rencontre BigData", mais il est trop tôt pour attaquer violemment avec du spark. 

Le but de cette session est de nous présenter une bonne partie de l'infrastructure google cloud au travers du déploiement d'une application de vote de tapis[^1].

Pas de slides pour cette session, tout est live.

Énormément de produits sur https://could.google.com :
* Compute
  * Compute Engine
  * App Engine
  * Container Engine
* Storage
  * SQL
  * Storage
  * Datastore
* Networking
  * Load Balancing
  * Interconnect
  * DNS
* Big Data
  * BigQuery
  * Dataflow
  * Pub/Sub
* Services
  * Translate API
  * Prediction API
  * Endpoints
* Management
  * Deployment Manager
  * Monitoring

Petit fait intéressant, SnapChat tourne sur App Engine et c'est les équipes de google qui s'occupent de la scalabitité de SnapChat.

L'idée derrière le google cloud, c'est de pouvoir changer de stratégie (Je gère ma VM, ça monte en charge, je passe sur AppEngine) sans que ça soit coûteux.

### Coût d'un VM

Chaque VM est facturée à la minute de CPU (les 10 premières minutes sont indivisibles).

À titre d'exemple, ils ont joué une semaine avec l'application de démo, ils ont fait des benchs (pour pousser le CPU) et ça leur a coûté 28$.

### Dockerizer la démo

L'idée c'est que plutôt que de lancer une VM, de la configurer et d'installer son application, on crée une image docker qu'on va déployer sur le cloud.

L'intérêt principal est de pouvoir tester son conteneur sur son infrastructure, puis de le déployer chez google.

Avec Docker machine, il est possible de créer des VMs et de tout configurer directement dans le cloud google, c'est franchement impressionnant.

Il est également possible de faire les mêmes commandes que sur sa machine, mais sur le cloud avec :

{% highlight bash %}
docker $(docker-machine config mavmgoogle) ps
{% endhighlight %}
> le "docker-machine config mavmgoogle" permet de récupérer toutes les options docker pour se connecter au docker de la vm.

Quelques petits soucis avec Docker et Google Cloud, il travaillent dessus.

### GRPC

[Google RPC][grpc_io], nouveau service de google pour les messages entre machines.

C'est un langage, le Protocol Buffer, qui génère des clients et des serveurs dans plein de technos différentes.

Annoncé comme plus puissant que XML, plus léger que Json. Utilisé en interne chez google depuis 15 ans, il est open-sourcé depuis peu (0.0.4).

### App engine

Après avoir joué avec les VMs, puis docker, maintenant le déploiement se fait bien app-engine.

> AppEngine permet de faire tourner une collection de modules, avec plusieurs versions. Ça permet nativement le traffic splitting pour tester différentes versions en live.

Il a suffit d'un app.yaml à la racine pour décrire ce qui va se lancer. Il est possible de déclarer des règles (à la manière d'une conf nginx) pour déclarer les resources statiques et dynamiques, pour éviter de solliciter l'applicatif pour servir du contenu statique.

Le déploiement docker sous app-engine crée automatiquement un registry privé, donc les images docker ne sont pas accessibles par les autres comptes.

### Console

La console est complète, fonctionne en application mobile également.

Un full accès aux logs en live est possible

#### BigQuery

Il est possible de streamer les logs en live vers BigQuery, ce qui permet une approche plus intéressante de nos logs "plats".
Pour la démo, les logs (un log par vote) de l'application sont insérés dans BigQuery et permettent de sortir toutes les informations des votes, donc de pouvoir double checker que les résultats calculés par l'applicatif sont cohérent.

### Runtime supportés

Avec la contenairization, AppEngine s'ouvre au monde. Google supporte Java, NodeJs, Go, Python, Ruby. Ils sont en train de définir les contraintes pour pouvoir rajouter un runtime custom, la communauté C# travaille déjà à supporter C# dans AppEngine.


### Debug

Il est possible de connecter différents SCM (github, bitbucket,...) à son projet afin de pouvoir naviguer dans le code source sans quitter la console google.

C'est par cette interface qu'il y a la possibilité de debugger. Ce n'est pas vraiment du debugger au sens où on ne peut pas attacher de breakpoint et arrêter l'application. Il s'agit plutôt d'un watchpoint, qui permet de prendre des snapshots mémoire aux endroits indiqués. Super puissant comme outil, il permet vraiment de capturer l'état de l'application, sans bloquer l'expérience utilisateur. La démo a été faite sur NodeJs et Java, c'est impressionnant.

### Kubernetes

Un groupe de machine (un pod) déployé en cluster. On décrit l'état souhaité de l'environnement (3 JVM, 1 Nginx) et le cluster se débrouille pour faire tourner tout ça "au mieux". Il est capable de relancer les services sur d'autres machines si la machine venait à planter par exemple. Ce qu'il faut retenir au final c'est qu'avec 2 fichiers de conf on est capable de déclarer une architecture complexe à déployer, ça fait rêver.

### Firebase

Solution de Backend As A Service, rachetée par google il y'a 6 mois, pour faire face au rachat de parse par facebook (la guerre continue).
Regardez le nobackend.coffee dans la démo. C'est juste bluffant. Firebase peut notifier les différentes applis d'une mise à jour de son état, en websocket.



La démo est bien évidemment sur [github][fluenthttp_demo], elle contient de quoi lancer l'application en java, mais aussi en node js. D'ailleurs, n'hésitez pas à comparer les code produit en nodeJs avec celui en Java, vous serez surpris. Un article sur FluentHttp est prévu, c'est, je pense, le meilleur serveur web java8.



[devoxxFrance]: /images/posts/devoxx/devoxx_france.png
[hands_on_GCP]: http://cfp.devoxx.fr/2015/talk/GOB-3561/La_Google_Cloud_Plaform_-_Au_dela_des_simples_demos
[fluenthttp_demo]: https://github.com/CodeStory/devoxxcarpet
[grpc_io]: http://www.grpc.io
[^1]: Si vous suivez le compte de David Gageot, vous comprenez mieux pourquoi il demandait qu'on lui envoie des photos de tapis.
