#!/bin/bash

# run inside nuc container

createdb -U postgres foo

psql -U postgres foo <<- SQL
create table bar (id serial primary key, name text);
INSERT INTO bar (name) SELECT repeat('hoff'||i, 10000) FROM generate_series(1,10000) i;
SQL
