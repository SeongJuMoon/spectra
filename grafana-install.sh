#bin/bash
helm install grafana \
--set persistence.enabled=true \
--set persistence.existingClaim=grafana \
--set service.type=LoadBalancer \
--set service.port=80 \
--set service.portName=lb-grafana \
--set service.targetPort=3000 \
--version 5.3.0 \
stable/grafana