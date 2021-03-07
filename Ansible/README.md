# Ansible notes

It is normal to organize your Ansible folder with two additional folders: files and playbooks.

Files: location for storing the config files

Playbooks: location storing your playbook files

If you choose to organize your folder in this fashion, you will need to edit the [filebeat-playbook.yml](Ansible/filebeat-playbook.yml) and [metricbeat-playbook.yml](Ansible/metricbeat-playbook.yml) with the additional folder.

For example:
```pyhton3
    # Use copy module
  - name: Drop in filebeat.yml
    copy:
      src: /etc/ansible/filebeat-config.yml  # <------ edit this line to show the correct file path
      dest: /etc/filebeat/filebeat.yml
```
You will also need to update the hosts line in all playbook files.


Additional changes to make so they are unique to you.

[ansible.cfg](ansible.cfg)
- line 107

[elk-install.yml](Ansible/elk-install.yml)
- line 4

[filebeat-config.yml](Ansible/filebeat-config.yml)
- lines 1106-1108

[hosts](Ansible/hosts)
- lines 20-30: change IP addresses only

[metricbeat-config.yml](Ansible/metricbeat-config.yml)
- line 62
- lines 96-98