#!/bin/bash
MAX=${MAX:-5}
find . -name '*.git' -mindepth 2 -maxdepth $MAX  -type d -execdir sh -c 'cd {} && echo Running in $(cd .. && pwd) && git gc' \;
