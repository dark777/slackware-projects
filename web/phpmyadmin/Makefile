NAME = httpd_configurado


all: $(NAME)

install:
	@echo "Instalando Arquivos..."
	sudo mv /etc/httpd /etc/httpd_backup
	sudo cp -ar httpd_configurado /etc/httpd
	mkdir -p /srv/httpd/htdocs/website1