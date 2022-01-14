# Ansible Execution Environment

## 1. Files to use with ansible-builder to create execution environment

* ansible.cfg : global ansible configuration file
* requirements.yml : ansible collections to install in execution environment
* requirements.txt : python dependencies needed by ansible collections
* bindep.txt : rpm list needed to install
* definition-file.yml : master file to define execution environment 

## 2. ocp_nuta image

* Base on **UBI8** with :
	- redhat.openshift Ansible collection
  	- redhat.rhel_system_roles Ansible collection
  	- community.general Ansible collection
	- tools like vim, jq, tar, etc...
	- **terraform** binary
	- OpenShift **oc** CLI
	- OpenShift **installer** CLI

## 3. How build image

* Go to image configuration directory
* Pass ansible-builder command:
```
ansible-builder build -v 3 -t ${image_tag_name} -f definition-file.yml
``` 
