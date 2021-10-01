
run:
	sudo apt -y install ansible
	ansible-playbook --connection=local local.yml