sudo apt update
sudo apt install -y ansible vim git
if [ ! -d "$HOME/Personal" ]; then
    echo "Creating ~/Personal directory..."
    mkdir -p "$HOME/Personal"
fi
git clone https://github.com/JoeSlain/myStack 
cd myStack
echo "Running Ansible playbook..."
ansible-playbook tasks/tomb.yml --ask-become-pass