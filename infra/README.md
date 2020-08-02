# AWS infra
In this folder you can fine ansible and terraform scripts to create infrastracture on AWS(EC2 instances)

```bash
$ cd terraform
$ terraform init
$ terraform apply
$ cd ../ansible
$ EC2_INI_PATH=./inventory/ec2.ini ansible-playbook setup_ec2.yml
```


# Links
* https://www.terraform.io/docs/configuration/index.html
* https://docs.ansible.com/ansible/latest/index.html
* https://docs.ansible.com/ansible/latest/user_guide/playbooks.html
* https://docs.ansible.com/ansible/latest/modules/modules_by_category.html
* https://galaxy.ansible.com/
