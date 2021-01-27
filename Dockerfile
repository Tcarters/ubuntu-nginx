FROM 	ubuntu:latest

RUN 	apt-get update 

RUN 	apt-get install -y nginx

RUN 	rm -f   /etc/nginx/sites-enabled/default 

COPY 	default  /etc/nginx/sites-enabled/default

RUN 	echo "Inside Index file " > /var/www/html/web.html

RUN 	echo "Hello World !!!!" > /var/www/html/22.txt

CMD	["/usr/sbin/nginx", "-g", "daemon off;"]

#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]



