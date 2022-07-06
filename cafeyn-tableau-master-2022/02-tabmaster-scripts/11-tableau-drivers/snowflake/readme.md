# Installation du driver ODBC Snowflake

#### 1. Téléchargement du dernier driver Snowflake :

````
bash 01-tableau-server-driver-snowflake-download.sh
````

#### 2. Installation du driver Snowflake

````
bash 02-tableau-server-driver-snowflake-install.sh
````

#### 3. Installation de odbcinst

##### 3.1 Vérification du package yum odbcinst

````
bash 03-yum-whatprovides-odbcinst.sh
````

Récupérer le premier package proposé en sortie `unixODBC-2.3.1-11.amzn2.x86_64` (cf fichier `03-yum-whatprovides-odbcinst.sh.out.txt`)

##### 3.2 Installation du package unixODBC

````
bash 04-yum-install-odbcinst.sh
````

#### 4. Paramètrage du driver Snowflake

##### 4.1 Paramètrage du fichier odbcinst.ini

Ouvrir le fichier odbcinst.ini dans nano

````
sudo nano /etc/odbcinst.ini
````

Ajouter la configuration du driver Snowflake, si elle n'existe pas:

````

[SnowflakeDSIIDriver]
APILevel=1
ConnectFunctions=YYY
Description=Snowflake DSII
Driver=/usr/lib64/snowflake/odbc/lib/libSnowflake.so
DriverODBCVer=03.52
SQLLevel=1
UsageCount=1

````


##### 4.2 Paramètrage du fichier odbc.ini

Ouvrir le fichier odbcinst.ini dans nano

````
sudo nano /etc/odbc.ini
````

Ajouter la connexion au serveur Snowflake :


````

[cafeyn-sf]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
SERVER=lekiosque.eu-west-1.snowflakecomputing.com
PORT=443
SSL=on
warehouse=TABLEAU_PUBLISHERS_WH
uid=<USERNAME>
pwd=<PASSWORD>

````

#### 5. Test de connexion 

````
bash 05-tableau-server-driver-snowflake-connection-test.sh
````

Une console SQL devrait apparaître. Taper `quit` pour la quitter.

