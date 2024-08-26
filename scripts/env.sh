%%script bash

# Dependency Variables, set to match your project directories

cat <<EOF > /tmp/variables.sh
export project_dir=$HOME/CSA
export project=\$project_dir/Shuban-CSA
export project_repo="https://github.com/shuban-789/Shuban-CSA.git"
EOF