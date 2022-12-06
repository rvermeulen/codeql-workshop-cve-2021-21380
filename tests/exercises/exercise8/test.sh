#!/bin/bash

if [ ! -f codeql-workspace.yml ]; then
    echo "This test must run from the root of the repository!" >&2
    exit 1
fi

if [ ! -d xwiki-platform-CVE-2021-21380 ]; then
    codeql database unbundle --quiet xwiki-platform-CVE-2021-21380.zip
fi

codeql database analyze --quiet --format=csv --output=tests/exercises/exercise8/exercise8.actual xwiki-platform-CVE-2021-21380 exercises/exercise8.ql


if diff -u tests/exercises/exercise8/exercise8.actual tests/exercises/exercise8/exercise8.expected > /dev/null
then
    echo "Test successfull"
    rm tests/solutions/exercise8/exercise8.actual
    rm -r xwiki-platform-CVE-2021-21380
else
    echo "Test failed!"
    diff -u tests/exercises/exercise8/exercise8.actual tests/exercises/exercise8/exercise8.expected
fi
