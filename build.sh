#!/bin/bash

set -e

MARKDOWN_VERSION="1.0.1"

rm -f resume.html
cat fragments/start.frag.html > resume.html
perl "Markdown_${MARKDOWN_VERSION}"/Markdown.pl README.md >> resume.html
cat fragments/end.frag.html >> resume.html
