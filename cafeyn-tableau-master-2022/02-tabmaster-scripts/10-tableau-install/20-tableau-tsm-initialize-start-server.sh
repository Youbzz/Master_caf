#!/usr/bin/env bash

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
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


tsm initialize --start-server --request-timeout 3600


