# Memoire en humanités numeriques
<b> Présentation de sujet mémoire : 
Approches quantitatives de la guerre du Rif </b>

Lors d’une interview sur la chaîne youtube Thinkerview en 2021 le candidat à l’élection présidentielle Eric Zemmour s’est exprimé sur les soldats coloniaux pendant la Guerre de 14-18 et la Deuxième Guerre mondiale et a dit : « Ils n’ont pas sauvé la France. Ce n’est pas eux qu’on a mis au premier rang. Tout ça est faux. C’est des légendes pour nous culpabiliser. » Force est de constater que le débat sur la mémoire des guerres mondiales et la colonisation est encore plus d’actualité sur la scène politique française qu’il n’a jamais été. Mais quel est le consensus historique, et les politiciens comme M. Zemmour ont-ils tort ou raison? 

Les réponses à ces questions ne sont pas si évidentes, surtout quand nous prenons en compte les différentes guerres de l’histoire contemporaine française où des troupes coloniales ont été engagées depuis la période napoléonienne. Reprendre ce sujet d’actualité à travers une étude quantitative de la guerre du Rif est ce que je souhaite faire comme recherche pour mon mémoire de master. 

Il n'y a pas de consensus pour la question des soldats morts pendant la guerre du Rif. L’historiographie tend vers une réponse qui met en avant les pertes des soldats nord-africains et de la coloniale au dessus des soldats métropolitains. Mais cette thèse n’est pas hégémonique car la guerre ayant eu différentes phases avec des moyens et des concentrations de troupes très variés, quantifier les participations des différentes composantes n’a jamais été fait. Combattre les amalgames historiques et éclairer une partie sombre de l'historiographie de la guerre du Rif sont les principales raisons qui me motivent à entreprendre ces recherches.  

L’histoire de cette guerre a souvent été oubliée mais aujourd’hui elle génère de nouveau de l'intérêt, probablement dû à sa nature unique et prémonitoire. La guerre du Rif a été un précurseur des guerres post-coloniales puisque c’est la première guerre du 20eme siècle ou un peuple indigène a cherché à se débarrasser de son colonisateur européen. C'est également la première guerre moderne dans le sens où elle a incorporé l’aviation, les chars et l’emploi des armes chimiques (systématiquement par l’armée espagnole). Elle peut ainsi être considérée comme la première opération extérieure de l’armée française. 




<b>Méthodologie et corpus</b>


Pour répondre à ma problematique, j’ai à ma disposition trois types de source : 
Les registres matricules, qui sont numérisés sur le site Mémoires des hommes mais seulement jusqu'à 1918. Étant donné que des unités combattantes de la Grande guerre (nord-africaines, coloniales et métropolitaines) se sont battus aussi pendant la guerre du Rif, il est possible qu’une quantité importante de registres soit déjà numérisée.
Les journaux des marches et d’opérations des régiments ayant participé à la guerre du Rif, qui ne sont pas numérisés. Le but d’inclure ces journaux dans ma recherche est d’apporter un contexte historique aux données quantitatives.  
Les données de la base des « Militaires décédés sur les théâtres d'opérations extérieurs (1905-1962) ». Cette base de données est censée contenir tous les morts pendant la guerre du Rif mais cela reste à vérifier.  

La première étape de ma recherche consisterait à établir une base de données en format csv de la totalité des morts de la guerre du Rif en faisant un scrapping de la base des « Militaires décédés sur les théâtres d'opérations extérieurs (1905-1962) ». Une fois que j’aurais fait cela je pourrais créer un échantillon des registres matricules de soldats nord-africains, coloniaux et métropolitains. Une analyse des journaux des marches des régiments ayant participé à la guerre serait fort utile lors de la création de cet échantillon. Trouver et numériser les documents toujours sous forme papier serait probablement la plus difficile partie de cette première étape. Après il faudra écrire un code ou entraîner un modèle d’OCR pour extraire la date de décès et d’autres informations clefs, inscrites plus ou moins uniformément sur les registres. Il faudra vérifier la faisabilité de cette méthode d’extraction car les registres matricules des troupes hors-métropoles sont encore plus désorganisés que celles des soldats métropolitains. Une fois que j’aurais fini de compiler une base de données constituée de l’information extraite des registres matricules. Je pourrais débuter le travail de comparaison entre ma base de données et celle des mort en opération extérieure du SHD afin de vérifier sa fiabilité et l'intérêt statistique de mon échantillon. Pour faire cela, on peut utiliser un programme comme R studio et comparer les divergence des deux data sets. 
 

Une fois qu’une base de données des morts pendant la guerre du rif est constituée entre ces deux ensembles, je pourrais débuter son traitement et son analyse historique en fonction des informations tirées des journaux des régiments et d’autres correspondances militaires qui détaillaient la situation sur le terrain. L'objectif final serait d’accompagner mon analyse des données par le partage des mes données brutes (siteweb ou excel) pour qu'elles puissent servir à d’autres études sur le sujet.


<b>Travail fait</b>

Grâce à la disponibilité en format CSV de la base de données des morts en opération extérieure, je n'ai pas eu besoin de faire un scrapping du site du SHD. 
J'ai téléchargé les données directement de ce lien: [https://www.memoiredeshommes.sga.defense.gouv.fr/fr/arkotheque/navigation_facette/index.php?f=opendata](ici). 
J'ai procédé à un traitement de la  base « Militaires décédés sur les théâtres d'opérations extérieurs (1905-1962) » avec la librairie `Pandas` de `Python`. 
La base comportait 20.059 entrées qui correspondaient chacune à un militaire mort. 


Ensuite j'ai filtré la base par année et par lieu de décès. La période qui m'intéresse est de janvier 1925 à décembre 1926 où la majorité des combats ont eu lieu. 
Dans la base, il y a une colonne pour le pays de décès et là j'ai filtré pour le Maroc. Le script que j'ai utilisé pour filtrer la base se trouve  
sur [https://github.com/the0phil3/projetMemoire](Github). Ce travail m'a permis de créer une base de données personnelle des sujets qui m'intéressent.


Avec cette base constituée, j'ai commencé les premières manipulation des caractéristiques des soldats telles que leur régiment ou leur lieu de décès. 
Mon but était de faire une pré-analyse avant de commencer à traiter les soldats par nom et faire l'OCR des fiches matricules. 
Le script que j'ai utilisé pour faire mes premières figures se trouve sur [https://github.com/the0phil3/projetMemoire](Github). 
J'ai chercher les 20 régiments avec le plus de pertes et les 20 lieux avec le plus de morts dans ma base :
![Fig 1](/Users/Theo/dev/projetMemoire/premierManip/20regiments.jpg)
![Fig 2](/Users/Theo/dev/projetMemoire/premierManip/20places.jpg)

<b>Les problèmes </b>
Le premier problème qui m'a interpellé est la vérification de mes données avec celles Max Schiavon dans son ouvrage. 
Je partage ici un scan de l'ouvrage de Schiavon qui décrit les pertes de l'armée avant l'offensif rifaine de 1925.

![Fig 3](/Users/Theo/dev/projetMemoire/premierManip/report1/schiavon.jpeg)

Dans le support de son ouvrage, il inclut beaucoup de données quantitatives sur la guerre mais pas le bilan des pertes totales. 
Donc il faudrait que j'essaie de trouver dans quel référence au SHD il a trouvé ces chiffres.  


Je me suis aussi rendu compte en créant mes premières figures que la base de données était pas forcement très propre. 
J'ai trouvé déjà un cas d'un double de la même personne et dans la Figure 2 vous pouvez voir qu'il y a « M'Sila » qui est en Algérie et pas au Maroc. 
Il faudrait que je trouve un moyen de filtrer les doubles et procéder à une vérification des noms de lieu. 

<b>Travail à faire </b>
Maintenant que j'ai ma base constituée, il faut: 
- La nettoyer
- Contacter le SHD pour vérifier l'origine des données chiffrés 
- Trouver une méthode pour diviser les soldats par origines 
- Constituer mon échantillon des fiches matricules numérisées
- Commencer l'OCR des fiches matricules et vérifier sa faisabilité

<b>Bibliographie</b>

Ayache, Germain, La guerre du Rif, L’Harmattan, 1996, 264 pages.

Schiavon, Max,  La guerre du Rif - Un conflit colonial oublié (1925-1926), Éditions Pierre de Taillac, 2016, 352 pages.

López, Julián Paniagua, « La intuición del análisis de redes de los militares españoles durante la guerra del Rif como método de lucha contra el contrabando de armas », Redes: Revista hispana para el análisis de redes sociales, Vol. 27, Nº. 1, 2016 (Ejemplar dedicado a: Gestión empresarial y usos militares), 1-14.