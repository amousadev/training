#!/bin/bash
curl -XPOST "http://192.168.1.108/nagiosxi/api/v1/config/service?apikey=ZQXtWlOoVilrX7P7qFLo4lbXNgqTj5ViU95QuSfJqTao0YOKTv9dajqWCT7bXis8" -d "host_name=app04&service_description=tomcatMonitorService1&check_command=check_xi_java_as\!-s service:jmx:rmi:///jndi/rmi://192.168.1.108:9091/jmxrmi -u 'tomcat' -p 'helper123' -t tomcat -C 'MemorySimpleHeap,MemoryMetaspace,ProcessCPUUsage,SystemCPUUsage,Uptime' -w '17179869184,34359738368,50,70,1500000:' -c '32212254720,68719476736,70,90,300000:'\!\!&check_interval=1&retry_interval=1&max_check_attempts=5&check_period=24x7&contacts=nagiosadmin&notification_interval=5&notification_period=24x7&applyconfig=1"