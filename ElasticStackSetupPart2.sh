yum install kibana-7.3.2

sudo -u kibana /usr/share/kibana/bin/kibana-plugin install https://packages.wazuh.com/wazuhapp/wazuhapp-3.10.2_7.3.2.zip

echo"--phase two almost complete.. cat this shell script and follow the rest of the instructions....---"
#Kibana will only listen on the loopback interface (localhost) by default, which means that it can be only accessed from the same machine. To access Kibana from the outside make it listen on its network IP by editing the file /etc/kibana/kibana.yml, uncomment the setting server.host, and change the value to:

  #  server.host: "<kibana_ip>"

   # Configure the URLs of the Elasticsearch instances to use for all your queries. By editing the file /etc/kibana/kibana.yml:

    #elasticsearch.hosts: ["http://<elasticsearch_ip>:9200"]

    #Enable and start the Kibana service:

     #   For Systemd:

#systemctl daemon-reload

#systemctl enable kibana.service

#systemctl start kibana.service

 #   For SysV Init:

#chkconfig --add kibana

#service kibana start
