FROM centos:7
ARG AMBARI_REPO_URL
RUN yum install -y wget sudo net-tools
RUN wget -nv ${AMBARI_REPO_URL} -O /etc/yum.repos.d/ambari.repo
RUN yum install -y ambari-server postgresql-jdbc
RUN wget -nv ${HDP_REPO_URL} -O /etc/yum.repos.d/hdp.repo
# Uncomment if you want to run kerberos in container
# RUN yum install -y krb5-server krb5-libs krb5-workstation
RUN yum install -y ntp
RUN yum install  -y java-1.7.0-openjdk java-1.7.0-openjdk-devel
RUN yum install -y ambari-agent
RUN yum install  -y postgresql-jdbc*
RUN yum install -y ambari-metrics-*
RUN yum install -y ambari-logsearch-*
RUN yum install -y  hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoopmapreduce hadoop-client openssl
RUN yum install -y snappy snappy-devel
RUN yum install -y  lzo lzo-devel hadooplzo hadooplzo-native
RUN yum install -y yum-plugin-priorities
RUN yum install -y ambari-server
RUN yum install -y hbase
RUN yum install -y phoenix
RUN yum install -y tez
RUN yum install -y sqoop
RUN yum install -y mahout
RUN yum install -y flume*
RUN yum install -y accumulo
RUN yum install -y falcon
RUN yum install -y knox
RUN yum install -y zookeeper*
RUN yum install -y hive*
RUN yum install -y phoenix_*
RUN yum install -y ranger*
RUN yum install -y storm_*
RUN yum install -y kafka_*
RUN yum install -y pig*
RUN yum install -y datafu_*
RUN yum install -y spark* livy*
RUN yum install -y zeppelin*
RUN yum install -y falcon_*
RUN yum install -y oozie_*
#RUN yum install -y lucidworks-hdpsearch
RUN yum install -y smartsense*
RUN yum install -y druid*
RUN yum install -y superset*
RUN yum install -y rpcbind
RUN ambari-server setup --database=mysql --databasehost=dbhost01.hcc.com --databaseport=3306 --databasename=ambari --databaseusername=ambari --databasepassword=ambari123! --silent
#RUN ambari-server setup --jdbc-db postgres --jdbc-driver=/usr/share/java/postgresql-jdbc.jar
RUN ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar
ADD scripts/start.sh /start.sh
CMD /start.sh
