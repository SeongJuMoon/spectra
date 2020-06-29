
chown -R 1000:2000 /nfs_shared
# 서비스 노출
# kubectl expose deploy prometheus-server --type=LoadBalancer --port 80 --target-port 9091 --name lb-prometheus-server