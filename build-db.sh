#!/bin/bash
## Golden Gate to Oakland
git-history file traffic.db goldengate-to-oakland-slim.json \
    --convert 'json.loads("[" + content.decode("utf-8") + "]")' --namespace 'gg-oak'

## Oakland to Golden Gate
git-history file traffic.db oakland-to-goldengate-slim.json \
    --convert 'json.loads("[" + content.decode("utf-8") + "]")' --namespace 'oak-gg'

