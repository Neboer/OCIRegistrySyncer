#!/bin/sh
/usr/bin/skopeo sync --src yaml --dest docker --dest-tls-verify=false --retry-times 10 --scoped src-images.yaml "$TARGET_REPO"
