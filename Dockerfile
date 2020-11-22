FROM postgres:13

RUN mkdir /nucbackup \
  && chown postgres:postgres /nucbackup

RUN mkdir /cloudbackup \
  && chown postgres:postgres /cloudbackup
