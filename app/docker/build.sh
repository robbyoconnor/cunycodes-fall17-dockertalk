#!/bin/bash

set -eux

USER_ID=${LOCAL_USER_ID:-65500}
echo "Adding app user with uid/gid $USER_ID..."
addgroup app -g "$USER_ID"
adduser -s /bin/bash -D -G app -u "$USER_ID" app

echo "Changing ownership to app user for work directory"
chown -R app:app /app

echo "Installing app dependencies..."
gosu app bash -c "yarn"

echo "Done building."
