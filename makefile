ssh:
	ssh -i ~/syamsul.pem ubuntu@ec2-13-250-149-254.ap-southeast-1.compute.amazonaws.com
	

ship:
	scp -i ~/syamsul.pem -r env/prod/nginx ubuntu@ec2-13-250-149-254.ap-southeast-1.compute.amazonaws.com:~/
	scp -i ~/syamsul.pem makefile ubuntu@ec2-13-250-149-254.ap-southeast-1.compute.amazonaws.com:~/

prod-run:
	docker run -itd --name mynginx \
	-v ${CURDIR}/nginx/:/etc/nginx/conf.d/ \
	--network=host \
	nginx

prod-stop:
	docker stop mynginx
	docker rm mynginx

prod-restart:
	make prod-stop
	make prod-run