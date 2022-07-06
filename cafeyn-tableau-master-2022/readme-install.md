# Documentation d'installation

#### 1. Création des utilisateurs adm-inst et adm-tab

- Les utilisateurs `adm-inst` et `adm-tab` doivent être créés sous l'utilisateur `ec2-user`.

- L'utilisateur `adm-inst` correspond au compte d'installation Tableau.

````
	sudo adduser adm-inst
	sudo usermod -aG wheel adm-inst
	sudo passwd adm-inst
````

- L'utilisateur `adm-tab` correspond à l'administrateur Tableau. 

````
        sudo adduser adm-tab
        sudo usermod -aG wheel adm-tab
        sudo passwd adm-tab
````

- Toutes les étapes d'installation se passent sous le compte `adm-inst`. 

- Faire `sudo su -l adm-inst` avant de commencer l'installation.


#### 2. Déroulement de l'installation

- Les dossiers présents dans le root_dir :
        - `__vars`: contient le fichier de définition des paramètres d'initialisation globaux.
	- `02-tabmaster-scripts`: contient les principaux scripts d'installation. 

#### Etapes d'installation

- 1. Accéder au fichier `nano __vars/vars.sh` pour modifier les variables globales, 
     comme la version Tableau à installer ou le compte/mot de passe Tableau à utiliser tout au long de l'installation.

- 2. Accéder au dossier d'installation `cd 02-tabmaster-scripts`: 

        - Chaque sous-dossier numéroté correspond à une étape d'installation.

        - Chaque sous-dossier contient des scripts numérotés à dérouler dans l'ordre afin de terminer l'étape d'installation correspondante.

	- L'éxecution des scripts numérotés `bash 01-script-1.sh` dans chaque sous-dossier doit passer dans l'ordre.

	- Chaque sous-dossier contient `_shell_out` contenant les outputs attendus de chaque commande.

	2.1. `cd \01-sys-base`, exécuter les scripts `.sh` dans l'ordre, pour tester l'ouverture les URLs maps de Tableau 
		et installer les packages unzip et wget.

	2.2. `cd \03-devops-tools`, exécuter les scripts dans l'ordre pour installer git et créer un repository dans Home.

	2.3. `cd \10-tableau-install`, exécuter les scripts dans l'ordre pour installer Tableau Server et démarrer le serveur via TSM.

	- NB_1: 
		Après l'exécution du script `11-tableau-install-init-tsm.sh`, penser à quitter la session actuelle sur `adm-inst` 
		et revenir pour que TSM soit inclu dans le PATH.
	- NB_2: 
		Le script `12-tableau-install-set-license.sh` active la licence d'essai de 14 jours. 
		Les clés de licences définitives seront activées plus tard.

	2.4. `cd \11-tableau-drivers` pour installer les drivers `postgresql` et `snowflake`
		(cf. readme.md dans le dossier de chaque driver pour la procédure d'installation).
	
	2.5. `cd \13-tableau-licenses` pour activer les clés de licences définitives. 
	      Chaque script `.sh` correspond à une licence à activer. 
	      Si une clé devrait changer, penser à modifier la variable `TABLEAU_LICENSE_KEY` dans son script correspondant ainsi que le nom du script.

	2.6. `cd \14-tableau-config` pour configurer en read-only la base de données PostGreSQL interne de Tableau. 

	- L'installation du serveur est terminée à ce stade, le serveur doit être up et accessible.

	- A ce stade, vous avez une version Tableau Server stable, vous pouvez lancer un backup manuel.

	2.7. `cd \30-tableau-operations` pour lancer un backup.
		- Le script `11-tsm-config-get-backup-path.sh` permet d'identifier le tsm backup path: chemin vers lequel les backups sont stockés.

		- Le script `21-tsm-backup-simple.sh` permet de lancer un backup manuel stocké dans le tsm-backup-path.

	        - Le script `22-tsm-restore-simple.sh` permet de lancer un restore à partir d'un fichier de backup Tableau Server existant.
	          Penser à spécifier le chemin vers le fichier de backup dans le paramètre `--file`. 

