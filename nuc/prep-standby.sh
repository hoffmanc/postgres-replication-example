#!/bin/bash

# execute inside nuc container

pg_basebackup -h localhost -D /initialbackup -U postgres

touch /initialbackup/recovery.signal
touch /initialbackup/standby.signal

chown -R postgres:postgres /initialbackup
