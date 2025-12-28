#!/bin/sh
/usr/bin/skopeo sync --src yaml --dest docker --dest-tls-verify=false --retry-times 1000 --retry-delay 10s --scoped src-images.yaml "$TARGET_REPO"
