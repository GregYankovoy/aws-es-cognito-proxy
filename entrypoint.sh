#!/bin/sh

# may want to change placeholders into regular expressions and/or line numbers
# https://stackoverflow.com/questions/11145270/how-to-replace-an-entire-line-in-a-text-file-by-line-number
# if container is re-run from same filesys, values will not be replaced
sed -i "s#{es_endpoint}#${ES_ENDPOINT}#g" /etc/nginx/conf.d/default.conf
sed -i "s#{cognito_endpoint}#${COGNITO_ENDPOINT}#g" /etc/nginx/conf.d/default.conf
exec "$@"