up:
	docker-compose -f docker-compose.yaml up -d --build

down:
	docker-compose -f docker-compose.yaml down --volumes

up.vpn:
	docker-compose -f docker-compose.vpn.yaml up -d --build

down.vpn:
	docker-compose -f docker-compose.vpn.yaml down --volumes

perm:
	chmod -R 775 ./storage/downloads && chown -R 1000:1000 ./storage/downloads

mount:
	sudo mkdir /mnt/d && sudo mount -t drvfs D: /mnt/d

symlink:
	ln -s /mnt/d/Archivum storage/downloads/complete