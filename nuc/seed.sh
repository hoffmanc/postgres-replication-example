#!/bin/bash

# run inside nuc container

createdb -U postgres foo

echo 'create table bar (id serial primary key, name text);' | psql -U postgres foo

for i in `seq 1 100`
do
  echo "insert into bar (name) values ('qux $i');" | psql -U postgres foo
done
