#!/bin/bash
## Golden Gate to Oakland
git-history file traffic.db goldengate-to-oakland-slim.json \
    --convert 'json.loads("[" + content.decode("utf-8") + "]")' --namespace 'ggoak' --id id --full-versions

## Oakland to Golden Gate
git-history file traffic.db oakland-to-goldengate-slim.json \
    --convert 'json.loads("[" + content.decode("utf-8") + "]")' --namespace 'oakgg' --id id --full-versions

