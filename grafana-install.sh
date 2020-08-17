#!/bin/bash
helm install grafana \
--set persistence.enabled=true \
--set persistence.existingClaim=grafana \
--set service.type=LoadBalancer \
--set service.port=80 \
--set service.portName=lb-grafana \
--set service.targetPort=3000 \
--set tolerations[0].key=node-role.kubernetes.io/master \
--set tolerations[0].effect=NoSchedule \
--set tolerations[0].operator=Exists \
--set nodeSelector."kubernetes\.io/hostname"=m-k8s \
--version 5.3.0 \
stable/grafana