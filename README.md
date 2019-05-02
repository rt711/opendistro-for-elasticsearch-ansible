
opendistro-for-elasticsearch-ansible
=========

OpenDistro/for-elasticsearch ansible deployment.
This playbook deploys a fully functional elasticsearch cluster.

Requirements
------------

root access to target machines is required.

Playbook Variables
--------------

group_vars/main.yml - NameServer
group_vars/main.yml - ElasticsearchKibanaPassword - rekey this with ansible vault.

Dependencies
------------

Hosts file filled with target IP addresses in inventory/hosts
Run configuration script which generates hashes instead if default passwords.

Example Playbook Usage
----------------

Run the playbook with the supplied wrapper script: ./push.sh dev

Inspec tests for compliance
----------------
inspec directory contains test_compliance.rb which is checking <br>
* presence of default password hashes. <br>
* default certificates in /etc/elasticsearch <br>
<br>

Usage: <br>
inspec exec inspec/test_compliance.rb -t ssh://user@host -i /your/private/ssh/key.pem  --sudo

License
-------

This playbook is licensed under the Apache 2.0 License.

Author Information
------------------

[Szabolcs Szallar](https://www.linkedin.com/in/szabolcsszallar/)
