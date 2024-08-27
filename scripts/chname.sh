#!/bin/bash

# Tools and setup script to change the name of a project

source /tmp/variables.sh

FILES=("$project/Makefile" "$project/_config.yml")

function chname {
    seq1="REPO_NAME"
    new_content="REPO_NAME ?= $1"
    sed -i "/^$seq1/c\\$new_content" "${FILES[0]}"

    seq2="title:"
    new_content="title: $1"
    sed -i "/^$seq2/c\\$new_content" "${FILES[1]}"
}