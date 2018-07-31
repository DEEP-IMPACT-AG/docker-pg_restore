#!/bin/sh

set -e

pg_restore -U ${PGUSER} -h ${PGHOST} -d ${PGDB} /var/dump
