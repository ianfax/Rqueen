# Rqueen
Auteur: Clement Marchand
Cours de R BDAI 10/2023

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

## Utilisation

Pour utiliser cette fonction, vous pouvez suivre ces étapes :

1. Téléchargez le fichier Rqueen.R qui contient la fonction.

2. Importez la fonction dans votre script R en utilisant `source("Rqueen.R")`.

3. Appelez la fonction en spécifiant les valeurs de X et Y pour obtenir les solutions.

Exemple d'utilisation :

```R
safe_queens("",10,10)
