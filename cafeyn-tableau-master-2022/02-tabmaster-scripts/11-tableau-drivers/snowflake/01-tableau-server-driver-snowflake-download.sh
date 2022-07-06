# =======================================================
# doc :
# =====
# https://sfc-repo.snowflakecomputing.com/
# https://sfc-repo.snowflakecomputing.com/odbc/linux/latest/snowflake-odbc-2.24.4.x86_64.rpm

# https://www.tableau.com/fr-fr/support/drivers
# https://downloads.tableau.com/drivers/linux/postgresql/postgresql-42.2.14.jar
#
# ======
# =======================================================


export TABLEAU_SNOWFLAKE_ODBC_DRIVER=https://sfc-repo.snowflakecomputing.com/odbc/linux/latest/snowflake-odbc-2.24.4.x86_64.rpm

sudo wget -vc ${TABLEAU_SNOWFLAKE_ODBC_DRIVER} -o 01-tableau-server-driver-snowflake-download.out.txt

