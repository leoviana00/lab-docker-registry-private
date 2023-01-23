<h1 align="center"> Private Registry Docker </h1>

<p align="center">
  <img alt="Registry" src="https://img.shields.io/static/v1?label=Registry&message=Docker&color=8257E5&labelColor=000000"  />
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

<p align="center">
  <img alt="Prometheues" src="images/docker-private-registry.png">
</p>

## 🌱 Project

- Laboratório para teste do `Private Docker Registry` com autenticação e certificado autoassinado.

## ✨ Tecnologias

- Docker
- Ansible
- Vagrant
- Virtualbox
- Certs

## 🛠️ Etapas serem feitas

1. [x] [Instalação dos pré-requisitos]
    - [x] Ansible
    - [x] Vagrant
    - [x] Virtualbox
2. [x] [Criar um `Vagrantfile` para subir a vm do registry]
3. [x] [Configurações iniciais do Ansible]
    - [x] Criar arquivo `ansible.cfg`
    - [x] Criar arquivo inventory
4. [x] [Criar role para configuração inicial do Host]
    - [x] Instalação do docker
    - [x] Criação de novo usuário
    - [x] Adicionar key publica ao usuário
    - [x] Adicionar usuário ao grupo docker
    - [x] Gerar certificados (crt, key e csr)
5. [x] [Criar role para configuração do Registry]
    - [x] Criar usuários e senhas para autenticação no registry
    - [x] Subir container do docker registry
    - [x] Mapear certificados criados para o serviço
    - [x] Teste de acesso ao registry
6. [x] [Criar playbook para chamar as roles]

## ✨ Execução

- Configuração do host
```bash
ansible-playbook -i inventory/virtualbox.yml site.yml --tags setup
```

- Configuração do Registry
```bash
ansible-playbook -i inventory/virtualbox.yml site.yml --tags registry
```

## 📄 Licença
Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 🙇 Referências