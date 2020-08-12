#bin/bash
helm install prometheus \
--set server.persistentVolume.existingClaim="prometheus-server" \
--set alertmanager.persistentVolume.existingClaim="prometheus-alertmanager" \
--set pushgateway.persistentVolume.existingClaim="pushgateway" \
--set server.securityContext.fsGroup=2000 \
--set server.securityContext.runAsUser=1000 \
--version 11.6.0 \
stable/prometheus