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

TABLEAU_IDENTITY_STORE_FILE=${TABLEAU_RES_DIR}/identity-store.json
cat > ${TABLEAU_IDENTITY_STORE_FILE} <<EOL
{
 "configEntities":{
  "identityStore": {
   "_type": "identityStoreType",
   "type": "local"
   }
  }
}
EOL

