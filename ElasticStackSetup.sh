rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
cat > /etc/yum.repos.d/elastic.repo << EOF
[elasticsearch-7.x]
name=Elasticsearch repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF

yum install elasticsearch-7.3.2

service filebeat start
service wazuh-manager start
service wazuh-api start
echo "---- now do a nano etc/elasticsearch/elasticsearch.yml and add the internal ip to the service. cat this file for more instructions-------"
#now do these.... 
#systemctl daemon-reload
#systemctl enable elasticsearch.service 
#systemctl start elasticsearch.service 
#filebeat setup --index-management -E setup.template.json.enables=false
#curl http://127.0.0.1:9200
echo "Phase one of Stack complete...... now follow the instructions."
