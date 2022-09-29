ANSIBLE_INIT_PATH=staging/ansibles/ansible-init


ansible.init:
	cd $(ANSIBLE_INIT_PATH) && ansible-playbook -i ./inventory.ini playbook.yml
