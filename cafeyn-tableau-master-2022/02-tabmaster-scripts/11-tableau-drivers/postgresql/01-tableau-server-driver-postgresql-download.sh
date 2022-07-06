# =======================================================
# doc :
# =====
# https://www.tableau.com/fr-fr/support/drivers
# https://downloads.tableau.com/drivers/linux/postgresql/postgresql-42.2.14.jar
#
# ======
# copy to :  /opt/tableau/tableau_driver/jdbc
# =======================================================


export TABLEAU_PG_JDBC_DRIVER=https://downloads.tableau.com/drivers/linux/postgresql/postgresql-42.2.14.jar

sudo wget -vc ${TABLEAU_PG_JDBC_DRIVER} -o 01-tableau-server-driver-postgresql-download.out.txt

