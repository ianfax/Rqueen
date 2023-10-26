# Rqueen
Auteur: Clement Marchand
Cours de R BDAI 10/2023
## Installation

Nécessite R et la librairy pheatmap installé

## Description

Ce projet consiste à écrire une fonction en R qui affiche toutes les possibilités de placer X dames sur un échiquier de X par Y sans qu'elles ne puissent s'atteindre en un seul coup. La récursivité devra être utilisée.
La fonction doit afficher toutes les possibilités dans le format suivant :

"9630815724"
"9641702853"
"9713068524"
"9741306825"
"9741306852"
"9742051863"

La valeur de retour de la fonction doit être le nombre de solutions affichées. La suite se lit de gauche à droite. Le premier chiffre correspond à la position de la première dame dans la première colonne (l'index commençant à 0). Le énième chiffre correspond à la position de la énième dame dans la énième colonne. Si dans une colonne, on ne peut pas placer de dame, -1 sera affiché. La valeur minimum de X et Y est 1.

## Explications du code 
Le code se compose de 2 fonctions principales is_safe et safe_queens

is_safe return true/false si pour savoir si je peux placer un reine à un certain endroit. elle prend en parametre in et plat. Int est un entier qui définit l'emplacement de la reine à placé. plat est une liste qui donne l'emplacement des reines précédemment placées.

safe_queens return le nombre de possibilité de placement de reine. 

heatmap prend en parametre une liste de vecteur sous le format "9741306825", lis cette liste et affiche +1 au coordonées correspondantes dans une matrice puis affiche la matrice sous forme de heatmap

## Historique des versions

en V1.0 la fonction va utilisé is_safe tant que mes liste sont inférieur a 10000000000, afin de print sous le format "9741306825" une liste de placement réalisable. Il y a un petit compteur dans la recursive pour le return final

en v1.1 la fonction affiche une heatmap des points les plus touchés par les queens dans l'échiquier

en v1.2 la fonction prendra les dimensions X Y de l'echiquier

Exemple d'utilisation :

```R
safe_queens(X,Y)
