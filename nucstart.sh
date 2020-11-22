gosu postgres /google-cloud-sdk/bin/gcloud auth activate-service-account --key-file=/creds.json
/docker-entrypoint.sh -c config_file=/etc/postgresql/postgresql.conf
