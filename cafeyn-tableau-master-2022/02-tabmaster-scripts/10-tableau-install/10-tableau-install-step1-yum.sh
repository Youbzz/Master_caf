#!/usr/bin/env bash

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
# ==============================

# ==============================
#TABLEAU_VERSION='2021.4'
#TABLEAU_BUILD_NUMBER='2'
TABLEAU_RPM="tableau-server-${TABLEAU_VERSION//./-}-${TABLEAU_BUILD_NUMBER}.x86_64.rpm"
#DATA_DIR='/var/opt'
TABLEAU_RES_DIR=${DATA_DIR}/tableau_install
# ==============================


# ==============================
set -e
# ==============================

cd ${TABLEAU_RES_DIR}

echo $TABLEAU_RES_DIR
echo $TABLEAU_RPM


if ! rpm -qa | grep -qw tableau-server; then
  echo "Installing Tableau"
  sudo yum install -y ${TABLEAU_RPM}
fi

