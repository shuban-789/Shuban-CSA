%%script bash

# Dependency Variables, set to match your project directories

# Load environment variables
cat <<EOF > /tmp/variables.sh
export project_dir=$HOME/CSA
export project=\$project_dir/Shuban-CSA
export project_repo="https://github.com/shuban-789/Shuban-CSA.git"
EOF

# Verify environment variables after sourcing
source /tmp/variables.sh

# Output shown title and value variables
echo "Project dir: $project_dir"
echo "Project: $project"
echo "Repo: $project_repo"