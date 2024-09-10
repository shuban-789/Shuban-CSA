---
layout: post
title: Tools - Sprint 1 REVIEW
description: REVIEW Development for Sprint 1
type: issues
comments: True
---

## Checklist Overview

- [x] Laptop Verification
- [x] VSCode
- [x] VSCode GitLEns setup
- [x] GitHub student_2025 repo
- [x] GitHub Pages Actions (Show tangibles on log analysis)
- [x] Hack Tools & Equipment Play
- [x] Hacks GitHub Pages Playground
- [x] Hacks SASS Basics
- [x] Hacks Frontend
- [x] Pair Programming

## Laptop Verification

Tools verification is in tools and tangibles. I also found a way to run bash commands in python

```bash
%%bash
touch /tmp/variables.sh
echo "export project_dir=$HOME/CSA" >> /tmp/variables.sh
echo "export project=\$project_dir/Shuban-CSA" >> /tmp/variables.sh
echo 'export project_repo="https://github.com/shuban-789/Shuban-CSA"' >> /tmp/variables.sh

source /tmp/variables.sh

# Output shown title and value variables
echo "Project dir: $project_dir"
echo "Project: $project"
echo "Repo: $project_repo"
```

    Project dir: /home/shubs/CSA
    Project: /home/shubs/CSA/Shuban-CSA
    Repo: https://github.com/shuban-789/Shuban-CSA