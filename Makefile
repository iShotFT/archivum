up:
	docker-compose -f docker-compose.yaml up -d --build

down:
	docker-compose -f docker-compose.yaml down --volumes

perm:
	chmod -R 775 ./storage/downloads && chown -R 1000:1000 ./storage/downloads

mount:
	sudo mkdir /mnt/d && sudo mount -t drvfs D: /mnt/d

symlink:
	ln -s /mnt/d/Archivum storage/downloads/complete

hash.strong:
	openssl rand -base64 45 | head -c 30; echo

hash.human:
	< /dev/urandom tr -dc 'a-zA-Z0-9' | head -c 16; echo