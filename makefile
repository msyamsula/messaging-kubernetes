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

	kubectl -f messaging-client/prodConfigMap.yaml apply
	kubectl -f messaging-client/deployment.yaml apply
	kubectl -f messaging-client/clusterIP.yaml apply
	kubectl -f messaging-client/nodePort.yaml apply

specific-deploy:
	echo "deploying ${SERVICE}"
	kubectl -f ${SERVICE}/prodConfigMap.yaml apply
	kubectl -f ${SERVICE}/deployment.yaml apply
	kubectl -f ${SERVICE}/clusterIP.yaml apply
	kubectl -f ${SERVICE}/nodePort.yaml apply

delete:
	echo "deleting ${SERVICE}"
	kubectl -f ${SERVICE}/prodConfigMap.yaml delete
	kubectl -f ${SERVICE}/deployment.yaml delete
	kubectl -f ${SERVICE}/clusterIP.yaml delete
	kubectl -f ${SERVICE}/nodePort.yaml delete

destroy:
	kubectl -f postgres/prodConfigMap.yaml delete
	kubectl -f postgres/deployment.yaml delete
	kubectl -f postgres/clusterIP.yaml delete
	kubectl -f postgres/nodePort.yaml delete

	kubectl -f redis/prodConfigMap.yaml delete
	kubectl -f redis/deployment.yaml delete
	kubectl -f redis/clusterIP.yaml delete
	kubectl -f redis/nodePort.yaml delete
	
	kubectl -f messaging-api/prodConfigMap.yaml delete
	kubectl -f messaging-api/deployment.yaml delete
	kubectl -f messaging-api/clusterIP.yaml delete
	kubectl -f messaging-api/nodePort.yaml delete

	kubectl -f messaging-websocket/prodConfigMap.yaml delete
	kubectl -f messaging-websocket/deployment.yaml delete
	kubectl -f messaging-websocket/clusterIP.yaml delete
	kubectl -f messaging-websocket/nodePort.yaml delete

	kubectl -f messaging-client/prodConfigMap.yaml delete
	kubectl -f messaging-client/deployment.yaml delete
	kubectl -f messaging-client/clusterIP.yaml delete
	kubectl -f messaging-client/nodePort.yaml delete

