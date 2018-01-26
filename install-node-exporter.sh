#!/bin/bash
sudo apt update
sudo apt install -y curl screen wget tar
wget https://github.com/prometheus/node_exporter/releases/download/v0.15.2/node_exporter-0.15.2.linux-amd64.tar.gz -O /tmp/nodes_exporter.tar.gz
tar xvzf /tmp/nodes_exporter.tar.gz
rm /tmp/nodes_exporter.tar.gz
mv node_exporter-0.15.2.linux-amd64 node_exporter
sudo ln -s ~/node_exporter/node_exporter /usr/bin/node_exporter
screen -AmdS node_exporter node_exporter
curl localhost:9100/metrics
