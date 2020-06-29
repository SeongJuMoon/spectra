#bin/bash
helm install prometheus \
--set server.persistentVolume.existingClaim="prometheus-server" \
--set alertmanager.persistentVolume.existingClaim="prometheus-alert-manager" \
--set pushgateway.persistentVolume.existingClaim="pushgw" \
--set server.securityContext.fsGroup=2000 \
--set server.securityContext.runAsUser=1000 \
stable/prometheus