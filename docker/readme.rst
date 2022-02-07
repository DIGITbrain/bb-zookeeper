================
Apache Zookeeper
================

About
=====

**ZooKeeper** [1]_ is a centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services.

Version
-------
Zookeeper verions **3.6.3** contained by Apache Kafka binaries version 3.0.0** [2]_ .

License
-------
**Apache License 2.0**


Pre-requisites
==============

* *docker* installed
* access to DIGITbrain private docker repo (username, password) to pull the image:
  
  - ``docker login dbs-container-repo.emgora.eu``
  - ``docker pull dbs-container-repo.emgora.eu/zookeeper:3.6.3``

Usage
=====

The preferred way to run this container :

``docker run -d --rm --name zookeeper -p 2181:2181/tcp zookeeper:3.6.3``

where container port 2181 is opened on host port 2181.

Security
========
The image uses no encryption/authentication. It is aimed to use internally in private networks.

Configuration
-------------

Ports
-----
.. list-table:: 
  :header-rows: 1

  * - Container port
    - Host port bind example
    - Comment
  * - 2181
    - ``-p 2181:2181``
    - Default Zookeeper port 2181 is opened as port 2181 on the host.

Volumes
-------

The container might use the following volume mounts.

.. list-table:: 
   :header-rows: 1

   * - Name
     - Volume mount
     - Comment
   * - *data*    
     - -v data_directory_on_host:/home/kafka/data  
     - Zookeeper data. Use this directory to persist Zookeeper data (will survive container restarts).
   * - *logs*    
     - -v logs_directory_on_host:/home/kafka/logs 
     - Zookeeper logs, in log4j format. 

References
==========

.. [1] https://zookeeper.apache.org/

.. [2] https://dlcdn.apache.org/kafka/3.0.0/

