#!/bin/bash

set -e

MARKDOWN_VERSION="1.0.1"

rm -f resume.html
cat fragments/start.frag.html > docs/index.html
perl "Markdown_${MARKDOWN_VERSION}"/Markdown.pl README.md >> docs/index.html
cat fragments/end.frag.html >> docs/index.html
