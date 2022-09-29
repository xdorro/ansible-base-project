ANSIBLE_INIT_PATH=staging/ansibles/ansible-init

ssh.init:
	chmod 700 ~/.ssh
	chmod 600 ~/.ssh/*
	ssh-agent -s
	ssh-add

ansible.init:
	cd $(ANSIBLE_INIT_PATH) && ansible-playbook -i ./inventory.ini playbook.yml
