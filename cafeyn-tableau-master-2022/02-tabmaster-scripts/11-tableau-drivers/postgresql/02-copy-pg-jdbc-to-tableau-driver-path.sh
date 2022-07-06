sudo mkdir -p /opt/tableau/tableau_driver/jdbc

echo "verification des droits portés par le chemin /opt/tableau/tableau_driver/jdbc"

ls -ltr /opt/tableau/tableau_driver/

sudo cp postgresql-42.2.14.jar /opt/tableau/tableau_driver/jdbc/postgresql-42.2.14.jar

echo "verification des droits portés par le fichier .jar"

ls -ltr /opt/tableau/tableau_driver/jdbc
