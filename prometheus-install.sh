#bin/bash
helm install prometheus \
--set nodeExporter.tolerations[0].key=node-role.kubernetes.io/master \
--set nodeExporter.tolerations[0].effect=NoSchedule \
--set nodeExporter.tolerations[0].operator=Exists \
--set alertmanager.persistentVolume.existingClaim="prometheus-alertmanager" \
--set pushgateway.persistentVolume.existingClaim="pushgateway" \
--set server.securityContext.fsGroup=1000 \
--set server.securityContext.runAsGroup=1000 \
--set server.securityContext.runAsUser=1000 \
--set server.persistentVolume.existingClaim="prometheus-server" \
--set server.service.type="LoadBalancer" \
--set server.nodeSelector."kubernetes\.io/hostname"=m-k8s \
--set server.tolerations[0].key=node-role.kubernetes.io/master \
--set server.tolerations[0].effect=NoSchedule \
--set server.tolerations[0].operator=Exists \
edu/prometheus