
run:
	sudo apt -y install ansible
	ansible-playbook --connection=local local.yml

pull:
	ansible-pull -U https://github.com/Ivaylo-Korakov/assembler