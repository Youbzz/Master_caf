#!/usr/bin/env bash

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
# ==============================

# ==============================
#TABLEAU_SRV_ADM_USER=adm-tab
#TABLEAU_SRV_ADM_USER_PASSWORD=Mydral2018
# ==============================


# ==============================
set -e
# ==============================


# todo get tsm path wheris
tabcmd initialuser --server 'localhost:80' --username "${TABLEAU_SRV_ADM_USER}" --password "${TABLEAU_SRV_ADM_USER_PASSWORD}"



