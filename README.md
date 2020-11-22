# Demo

Demonstrates spinning up a master (nuc) and standby (cloud) server,
then inserting a bunch of rows to see replication happen on standby

1. `docker-compose up -d nuc`
1. wait for it to be up
1. docker-compose exec nuc nuc/prep-standby.sh
1. docker-compose up -d cloud
1. wait for it to be up
1. docker-compose exec nuc /nuc/seed.sh
