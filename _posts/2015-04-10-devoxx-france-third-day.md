---
layout: post
title:  "Devoxx France : jour 3"
date:   2015-04-10
categories: java
---

![Devoxx][devoxxFrance]

## Keynote

### Un robot peut-il apprendre comme un enfant ?

On recommence avec les robots pour cette première keynote de Pierre-Yves Oudeyer.

Nous avons tous une vision des robots en tant qu'extension de nos mains (robots aspirateurs, ceux sur Mars, pour tondre la pelouse,...) mais Pierre-Yves essaie de créer des robots qui étendent notre esprit. Pour cela il se base sur l'observation de l'apprentissage des enfants. C'est bluffant de voir à quel point en analysant mathématiquement nos interactions avec le monde extérieur on peut modéliser le comportement d'un nouveau né.

#### Comment les langues naissent-elles ?

En mettant un groupe de robots "curieux" dans un espace restreint, on peut observer l'apparition d'un langage. Les robots désignent un objet et tentent de le nommer par paire. Au bout d'un moment un consensus apparait et ce mot se diffuse auprès des autres robots.

Il nous a également présenté [Poppy][poppy_project], un robot imprimé en 3D open source.


### The decentralization singularity

Stéphan Tual nous parle d'Ethereum. Il commence avec le constat de la centralisation d'internet (Facebook, Amazon), qui n'était pas intentionnel, mais a émergé par simplicité.

Pour ceux qui ne connaissent pas, Ethereum se base sur Bitcoin. L'idée est de mettre du code dans la blockchain pour que tous les éléments du réseau puissent l'exécuter et s'assurer qu'il n y a pas de fraude.

### Clever cloud

Le présentateur prend à contre pied le mouvement DevOps en nous exposant un parallèle très intéressant avec l'électricité. En effet au début de l'électricité les entreprises avaient leur propre façon de générer l'électricité, avec tous les écarts que ça implique (alternatif/continue, voltage). Aujourd'hui on ne se pose plus de question sur l'électricité, ça fonctionne, point. 

L'infrastructure doit être pour les développeurs comme l'électricité : accessible sans même avoir à y penser, et fiable. J'avoue être plus proche du mouvement DevOps mais sa vision donne à réfléchir.


### Future<Java>

Brian Goetz nous parle pour cette dernière keynote du futur de Java, en nous parlant de son passé. Ayant suivi sa conférence hier, je n'ai pas appris grand chose à celle-ci.

Une chose très intéressante par contre, c'est l'arrivée (Java 10 ?) des value class, qui sont à la limite entre objets et type primitifs, permettant une abstraction équivalent à l'objet tout en ayant un comportement mémoire primitif.

Ça permettra ce genre de concepts, j'ai déjà hâte.

{% highlight java %}
public int integerSum(List<int> integers) {
	return integers.parallelStream().sum();
}
{% endhighlight %}

Avouez que ça fait rêver non ?


[devoxxFrance]: /images/posts/devoxx/devoxx_france.png
[poppy_project]: http://www.poppy-project.com