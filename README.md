# Rqueen
**Auteur:** Clement Marchand
*Cours de R BDAI 10/2023*

## Installation

1. Installer Rstudio via [ce lien](https://www.rstudio.com/categories/rstudio-ide/), qui installe R simultanément.
2. Ajoutez les librairies pheatmap et stringr dans Rstudio via les menus **Outils > Installer des librairies**.
3. Ready to go.

## Description

**rushr.R:** Petit exercice d'entraînement. Ce fichier n'est pas utile pour le fonctionnement de rqueen.

**rqueen.R:**

Ce projet propose une fonction en R affichant toutes les façons de placer X dames sur un échiquier de X par Y sans qu'elles puissent se menacer en un seul coup. Utilisation de la récursivité.

La fonction affiche les possibilités sous le format :

```
"9630815724"
"9641702853"
"9713068524"
"9741306825"
"9741306852"
"9742051863"
```

La valeur de retour est le nombre de solutions affichées. Le premier chiffre représente la position de la première dame dans la première colonne (indice 0). Le énième chiffre correspond à la position de la énième dame dans la énième colonne. Si une colonne ne peut pas avoir de dame, -1 est affiché. X et Y doivent être au minimum égaux à 1.

## Explications du code 

- **is_safe:** Retourne true/false pour déterminer si une reine peut être placée à un certain endroit. Prend en paramètre in (emplacement de la reine) et plat (liste des emplacements des reines précédentes).

- **safe_queens:** Retourne le nombre de possibilités de placement de reine.

- **heatmap:** Prend une liste de vecteurs au format "9741306825", la lit et affiche +1 aux coordonnées correspondantes dans une matrice. Ensuite, affiche la matrice sous forme de heatmap.

## Historique des versions

- **V1.0:** La fonction utilise is_safe tant que les listes sont inférieures à 10000000000, affichant des placements réalisables sous le format "9741306825". Compteur dans la récursivité pour le retour final.

- **V1.1:** La fonction affiche une heatmap des points les plus touchés par les queens sur l'échiquier.

- **V1.2:** La fonction prends les dimensions X et Y de l'échiquier.

**Exemple d'utilisation:**
```R
safe_queens(X,Y)
```
