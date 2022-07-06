#!/usr/bin/env bash

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
#TABLEAU_TSM_USER=adm-tab
#TABLEAU_TSM_USER_PASSWORD=Mydral2018
# ==============================


# ==============================
set -e
# ==============================


# todo get tsm path wheris
tsm login -u "${TABLEAU_TSM_USER}" -p "${TABLEAU_TSM_USER_PASSWORD}"


TABLEAU_REGISTRATION_FILE=${TABLEAU_RES_DIR}/registration.json


tsm register --file ${TABLEAU_REGISTRATION_FILE}


