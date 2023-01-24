# Instalando ferramentas necessárias
init:
	if [ -x /usr/bin/pacman ]; then \
		xargs -a requirements.txt sudo pacman -Sy --noconfirm; \
	elif [ -x /usr/bin/apt-get ]; then \
		xargs -a requirements.txt sudo apt-get install -y; \
	elif [ -x /usr/bin/yum ]; then \
		xargs -a requirements.txt sudo yum -y install; \
	else \
		echo "No package manager found"; \
	fi

# Inicializando a vm e subindo o serviço
setup_up:
	vagrant up
	ansible-playbook -i inventory/virtualbox.yml site.yml --tags setup,registry

# Derrubando o ambiente
setup_down:
	vagrant destroy -f