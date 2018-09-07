#!/bin/sh

set -eo pipefail

openssl smime -decrypt -in /var/dump.ssl -binary \
  -inform DEM -inkey /var/backup_key.pem | pg_restore -U ${PGUSER} -h ${PGHOST} -d ${PGDB} 
