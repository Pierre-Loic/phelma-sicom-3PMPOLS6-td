#!/bin/bash

# Étape 1 : Télécharger les fichiers nécessaires au TD
echo "Téléchargement du fichier environment.yml..."
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/environment.yml -O ~/Downloads/environment.yml

echo "Téléchargement des fichiers des TD..."
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/TD_1_1.ipynb -O ~/Downloads/TD_1_1.ipynb
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/TD_1_2.ipynb -O ~/Downloads/TD_1_2.ipynb
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/TD_2_1.ipynb -O ~/Downloads/TD_2_1.ipynb
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/TD_2_2.ipynb -O ~/Downloads/TD_2_2.ipynb
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/TD_2_3.ipynb -O ~/Downloads/TD_2_3.ipynb
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/weights.11-0.67.hdf5 -O ~/Downloads/weights.11-0.67.hdf5
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/intranet.jpg -O ~/Downloads/intranet.jpg
wget https://gricad-gitlab.univ-grenoble-alpes.fr/phelma-sicom/1a/3pmpols6-td/-/raw/main/content/phelma.jpg -O ~/Downloads/phelma.jpg

# Étape 2 : Aller dans le dossier des téléchargements
echo "Changement de répertoire vers le dossier Downloads..."
cd ~/Downloads

# Vérification de la présence du fichier environment.yml
echo "Vérification du fichier environment.yml..."
if [ -f "environment.yml" ]; then
    echo "Fichier environment.yml trouvé."
else
    echo "Fichier environment.yml non trouvé. Veuillez vérifier le téléchargement."
    exit 1
fi

# Étape 3 : Créer l'environnement virtuel et installer les bibliothèques
echo "Création de l'environnement virtuel et installation des bibliothèques..."
conda env create -f environment.yml

# Étape 4 : Lancer le Jupyter Lab
echo "Lancement du Jupyter Lab..."
conda run -n tensorflow-env jupyter lab
