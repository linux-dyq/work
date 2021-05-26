#官网
docker run \
    -p 9090:9090 \
    -v /path/to/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus
    
FROM prom/prometheus
ADD prometheus.yml /etc/prometheus/

docker build -t my-prometheus .
docker run -p 9090:9090 my-prometheus
