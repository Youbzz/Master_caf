# Documentation d'upgrade Tableau Server

- Ci-dessous le lien vers la documentation officielle d'upgrade de Tableau Server sous Linux.
https://help.tableau.com/current/server-linux/fr-fr/sug_plan.htm

- Suivre les étapes décrites dans la section Mise à Niveau > Mise à niveau depuis 2018.1 et ultérieur (Linux) qui correspondent à la mise à niveau d'un seul serveur.

# Recommendations & best practices d'upgrade Tableau Server : 

1. Procéder à l'installation de la nouvelle version Tableau sur une nouvelle instance (cf doc d'install README)
	- Penser à spécifier la nouvelle version de Tableau Server dans le fichier `.\__vars\vars.sh`:
		TABLEAU_VERSION='2021.4' - version majeure.
		TABLEAU_BUILD_NUMBER='2' - version mineure.
	- Pour la procédure d'installation, cf. `.\readme-install.md`.

2. Procéder à un restore du backup du Tableau Server sur la nouvelle instance.

3. Recette et validation par le métier que la nouvelle version Tableau Server est fonctionnel.

4. Procéder à l'opération de bascule en elle même:
	4.1 Arrêt de service sur l'ancien serveur. 
	4.2 Décommissionnement des licences de l'ancien serveur Tableau.
	4.3 Activation des licences sur le nouveau server Tableau.
	4.4 Procéder à un restore final du backup Tableau Server (prendre le backup de nuit le plus récent ou générer un nouveau backup).
	4.5 Procéder à la bascule de DNS vers la nouvelle gateway Amazon.


