CREATE DATABASE HIVE;

CREATE USER 'hive'@'localhost' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'hive'@'localhost';
CREATE USER 'hive'@'%' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'hive'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE OOZIE;
CREATE USER 'oozie'@'%' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'oozie'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE RANGER;

CREATE USER 'ranger'@'localhost' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'localhost';
CREATE USER 'ranger'@'%' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE superset;

CREATE USER 'superset'@'localhost' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'superset'@'localhost';
CREATE USER 'superset'@'%' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'superset'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE rangerkms;

CREATE USER 'rangerkms'@'localhost' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'rangerkms'@'localhost';
CREATE USER 'rangerkms'@'%' IDENTIFIED BY 'ambari123';
GRANT ALL PRIVILEGES ON *.* TO 'rangerkms'@'%';
FLUSH PRIVILEGES;

