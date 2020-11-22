#!/bin/bash

# execute inside nuc container

pg_basebackup -h localhost -D /backup/initial -U postgres
