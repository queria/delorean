#!/bin/bash
source ~/delorean.venv/bin/activate
cd ~/delorean
echo 'delete from commits where status = "FAILED";' | sqlite3 commits.sqlite

cd scripts
REP="repos-${1:-kilo}.sh"
if [[ ! -f "$REP" ]]; then
    echo "Wrong repo selection $REP"
    exit 1
fi
ln -snf "$REP" repos.sh
cd ..

delorean --info-repo ~/rdoinfo --config-file projects.ini --head-only |& tee ./data/repos/build.txt
