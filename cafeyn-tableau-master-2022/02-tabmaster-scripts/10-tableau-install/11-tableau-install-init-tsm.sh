#!/usr/bin/env bash

# ==============================
export TABLEAU_DATA=/data/var/opt/tableau
export TABLEAU_SCRIPTS="/opt/tableau/tableau_server/packages/scripts.*"
# todo faire un controle wheris idealement
export TABLEAU_TSM_USER=adm-tab
# ==============================



# ==============================
set -e
# ==============================

cd ${TABLEAU_SCRIPTS}
ls init*


# Install tableau using /data mount point for storage and tableau user (admtab) as tsm user

if ! command -v tsm >/dev/null 2>&1; then
  echo "Initialising TSM"
#  sudo "${TABLEAU_SCRIPTS}"/initialize-tsm --accepteula -d "${TABLEAU_DATA}" -a "${TABLEAU_TSM_USER}"
  sudo ./initialize-tsm --accepteula -d "${TABLEAU_DATA}" -a "${TABLEAU_TSM_USER}"

fi

echo Tableau server initialized

