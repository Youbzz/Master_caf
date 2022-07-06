#!/usr/bin/env bash

## script a lancer sous sudo (cf permission denied)

# ==============================
# récupérer les variables définies dans le fichier des vars
VARS_FILE_PATH=../../__vars/vars.sh
source "${VARS_FILE_PATH}"
# ==============================

# ==============================
#DATA_DIR='/var/opt'
TABLEAU_RES_DIR=${DATA_DIR}/tableau_install
# ==============================


TABLEAU_REGISTRATION_FILE=${TABLEAU_RES_DIR}/registration.json
cat > ${TABLEAU_REGISTRATION_FILE} <<EOF
{
  "zip" : "75003",
  "country" : "France",
  "city" : "Paris",
  "last_name" : "Diane",
  "industry" : "Data",
  "opt_in": "false",
  "eula" : "yes",
  "title" : "Data Architect",
  "phone" : "+33621466494",
  "company_emloyees" : "Data Architect"
  "company" : "Mydral",
  "state" : "in Europe",
  "department" : "Data",
  "first_name" : "Youba",
  "email" : "ydiane@mydral.com"
}
EOF

