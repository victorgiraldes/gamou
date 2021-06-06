#!/bin/bash
set -e

echo 'Starting Webpack dev server ...' && /gamou/bin/webpack-dev-server &
echo 'Starting Rails server ...' && rm -f /gamou/tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0

exec "$@"
