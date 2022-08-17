script_dir=$(cd "$(dirname -- "$0")";pwd)
echo "export SDK_BASE=$script_dir"  >> ~/.zshrc
echo "export SDK_BASE=$script_dir"  >> ~/.bashrc