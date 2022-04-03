---
author:
- Theophile Miailhe
date: 1/04/22
---

# Le travail accompli :

####  {#section .unnumbered}

Grâce à la disponibilité en format CSV de la base de données des morts
en opération extérieure, je n'ai pas eu besoin de faire un scrapping du
site du SHD. J'ai téléchargé les données directement de ce lien:
<https://www.memoiredeshommes.sga.defense.gouv.fr/fr/arkotheque/navigation_facette/index.php?f=opendata>.
J'ai procédé à un traitement de la base « Militaires décédés sur les
théâtres d'opérations extérieurs (1905-1962) » avec la librairie
**Pandas** de **Python**. La base comportait 20.059 entrées qui
correspondaient chacune à un militaire mort.

![Base de données originelle](dbpic.png){#fig:Base d'origine}

####  {#section-1 .unnumbered}

Ensuite j'ai filtré la base par année et par lieu de décès. La période
qui m'intéresse est de janvier 1925 à décembre 1926 où la majorité des
combats ont eu lieu. Dans la base, il y a une colonne pour le pays de
décès et là j'ai filtré pour le Maroc. Le script que j'ai utilisé pour
filtrer la base se trouve sur la **branch v.02** de mon projet sur
[Github](https://github.com/the0phil3/projetMemoire/tree/v.02). Ce
travail m'a permis de créer une base de données personnelle des sujets
qui m'intéressent :

![Base de données finale](mortsduRif.png){#fig:Base finale}

####  {#section-2 .unnumbered}

Avec cette base constituée, j'ai commencé les premières manipulation des
caractéristiques des soldats telles que leur régiment ou leur lieu de
décès. Mon but était de faire une pré-analyse avant de commencer à
traiter les soldats par nom et faire l'OCR des fiches matricules. Le
script que j'ai utilisé pour faire mes premières figures se trouve la
**branch v.03** de mon projet sur
[Github](https://github.com/the0phil3/projetMemoire/tree/v.03). J'ai
chercher les 20 régiments avec le plus de pertes et les 20 lieux avec le
plus de morts dans ma base :

![Les 20 premiers régiments avec le plus de
morts](20regiments.jpg){#fig:20regiments}

![Les 20 premiers lieux avec le plus de
morts](20places.jpg){#fig:20places}

# Les problèmes :

####  {#section-3 .unnumbered}

Le premier problème qui m'a interpellé est la vérification de mes
données avec celles Max Schiavon dans son ouvrage *La guerre du Rif*. Je
partage ici un scan de l'ouvrage de Schiavon qui décrit les pertes de
l'armée avant l'offensif rifaine de 1925.[@Schiavon]

![Bilan de pertes 1925](schiavon.jpeg){#fig:schiavonscan}

Dans le support de son ouvrage, il inclut beaucoup de données
quantitatives sur la guerre mais pas le bilan des pertes totales. Donc
il faudrait que j'essaie de trouver dans quel référence au SHD il a
trouvé ces chiffres.

####  {#section-4 .unnumbered}

Je me suis aussi rendu compte en créant mes premières figures que la
base de données était pas forcement très propre. J'ai trouvé déjà un cas
d'un double de la même personne et dans la Figure 4 vous pouvez voir
qu'il y a « M'Sila » qui est en Algérie et pas au Maroc. Il faudrait que
je trouve un moyen de filtrer les doubles et procéder à une vérification
des noms de lieu.

# Le travail à faire :

####  {#section-5 .unnumbered}

Maintenant que j'ai ma base constitué, il faut:

1.  La nettoyer

2.  Contacter le SHD pour vérifier l'origine des données chiffrés

3.  Trouver une méthode pour diviser les soldats par origines

4.  Constituer mon échantillon des fiches matricules numérisées

5.  Commencer l'OCR des fiches matricules et vérifier sa faisabilité

::: thebibliography
1 Max Schiavon, (1986) *La guerre du Rif - Un conflit colonial oublié
(1925-1926)*, Éditions Pierre de Taillac, 2016, 352 pages.
:::
