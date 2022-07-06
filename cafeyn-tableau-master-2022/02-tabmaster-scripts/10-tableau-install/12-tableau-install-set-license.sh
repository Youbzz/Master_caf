#!/usr/bin/env bash

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
# ==============================

# ==============================
# Il n y a pas besoin de saisir la clé de licence. Ce script active la licence d'essai de 14 jours.
# L'activation de la licence définitive se fera après sur un autre script.
TABLEAU_LICENSE_KEY=abc
# ==============================

# ==============================
#TABLEAU_TSM_USER=adm-tab
#TABLEAU_TSM_USER_PASSWORD=Mydral2018
# ==============================


# todo : comprendre ?? raison dans le script initial
#source /etc/profile.d/tableau_server.sh


# ==============================
set -e
# ==============================

tsm login -u "${TABLEAU_TSM_USER}" -p "${TABLEAU_TSM_USER_PASSWORD}"

#if [[ -n "${TABLEAU_LICENSE_KEY}" ]]; then
#    echo "Activate using the Key"
#    tsm licenses activate -k $(aws ssm get-parameter --with-decryption --region "${REGION}"  --name "${TABLEAU_LICENSE_KEY}" --query 'Parameter.Value')
#else

    echo "Activate using the trial"
    tsm licenses activate -t

#fi




