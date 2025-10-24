#!/bin/sh
echo "Entry point"
# Generate JS config file with current env vars
cat <<EOF > /usr/share/nginx/html/env-config.js
window._env_ = {
  VITE_API_URL: "${VITE_API_URL}"
}
EOF

# Start nginx
nginx -g 'daemon off;'
