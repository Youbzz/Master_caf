#!/usr/bin/env bash

# =============================
# doc : 
# https://www.tableau.com/support/releases/server/2021.4.2#esdalt
# https://downloads.tableau.com/esdalt/2021.4.2/tableau-server-2021-4-2.x86_64.rpm
#
# <20211211>
# https://www.tableau.com/support/releases/server/2021.3.4#esdalt
# 20213.21.1112.1434
#
# Out of an abundance of caution, the download file for this version has been removed due to the
# Apache Log4j vulnerability. Please see this article for the latest information,
# as we will be updating it as new details become available.
# </20211211>
# =============================

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
# ==============================

# ==============================
#DATA_DIR='/var/opt'
TABLEAU_RES_DIR=${DATA_DIR}/tableau_install
# ==============================

# ==============================
#TABLEAU_VERSION='2021.4'
#TABLEAU_BUILD_NUMBER='2'

# find . replace - on tableau version for url
# TABLEAU_RPM="tableau-server-${TABLEAU_VERSION//./-}.x86_64.rpm"
TABLEAU_RPM="tableau-server-${TABLEAU_VERSION//./-}-${TABLEAU_BUILD_NUMBER}.x86_64.rpm"
# ==============================


# ==============================
set -e

# From help set :
#  -e  Exit immediately if a command exits with a non-zero status.
# But it's considered bad practice by some (bash FAQ and irc freenode #bash FAQ authors). It's recommended to use:
# trap 'do_something' ERR
# to run do_something function when errors occur.
# ==============================

# ==============================
sudo mkdir -p ${TABLEAU_RES_DIR}
cd ${TABLEAU_RES_DIR}
# ==============================


#export AWS_DEFAULT_OUTPUT="text"
#REGION=$(curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}')

#TABLEAU_TSM_USER_PASSWORD=$(aws ssm get-parameter --with-decryption --region "${REGION}"  --name '{{ TableauTsmUserPassword }}' --query 'Parameter.Value')

# https://www.tableau.com/support/releases/server/2021.3.4#esdalt
# 20213.21.1112.1434
# 
# Out of an abundance of caution, the download file for this version has been removed due to the
# Apache Log4j vulnerability. Please see this article for the latest information, 
# as we will be updating it as new details become available.



TABLEAU_URL="https://downloads.tableau.com/esdalt/${TABLEAU_VERSION}.${TABLEAU_BUILD_NUMBER}/${TABLEAU_RPM}"
echo "Downloading tableau: ${TABLEAU_URL}"
#wget -nvc ${TABLEAU_URL}
sudo wget -vc ${TABLEAU_URL}



