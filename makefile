deploy:
	kubectl -f postgres/prodConfigMap.yaml apply
	kubectl -f postgres/deployment.yaml apply
	kubectl -f postgres/clusterIP.yaml apply
	kubectl -f postgres/nodePort.yaml apply

	kubectl -f redis/prodConfigMap.yaml apply
	kubectl -f redis/deployment.yaml apply
	kubectl -f redis/clusterIP.yaml apply
	kubectl -f redis/nodePort.yaml apply
	
	kubectl -f messaging-api/prodConfigMap.yaml apply
	kubectl -f messaging-api/deployment.yaml apply
	kubectl -f messaging-api/clusterIP.yaml apply
	kubectl -f messaging-api/nodePort.yaml apply

	kubectl -f messaging-websocket/prodConfigMap.yaml apply
	kubectl -f messaging-websocket/deployment.yaml apply
	kubectl -f messaging-websocket/clusterIP.yaml apply
	kubectl -f messaging-websocket/nodePort.yaml apply

specific-deploy:
	echo "deploying ${SERVICE}"
	kubectl -f ${SERVICE}/prodConfigMap.yaml apply
	kubectl -f ${SERVICE}/deployment.yaml apply
	kubectl -f ${SERVICE}/clusterIP.yaml apply
	kubectl -f ${SERVICE}/nodePort.yaml apply

