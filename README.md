
# Java Application

https://github.com/spring-projects/spring-petclinic

# Tools/Services 

- DevOps Tools
  - Jenkins
  - Packer
  - Ansible
  - Terraform

- AWS Services
  - Application Load Balancer (L7)
  - Autoscaling Group
  - AWS secrets manager
  - RDS (MySQL)

# Project Workflow

- Build Java application
- Use Packer & Ansible to build the AMI With application code
    - configure application logging
    - configure cloudwatch agent with the application log location.
- Use Teraaform to provision the following 
    - MySQL RDS instance and store the username and password in AWS secrets manager
    - Provision Application Load Blancer 
    - Create a launch template With the Application AMI
    - Provision Autoscaling Group with Launch tempalate that use AMI built by packer and attach it to Loadbalancer.
- Verify application by accessing it using Load Balancer endpoint.
- Verify application logs in Cloudwatch

## Java Application 

Spring boot Petclinic application

```
git clone https://github.com/techiescamp/java-spring-petclinic
```

Starting the application with externalized properties file.

```
java -jar spring-petclinic.jar --spring.config.location=/path/to/application.properties --spring.profiles.active=mysql
```

Log Location

```
/opt/petclinic.log
```

Change folder persmissions

```
sudo chown -R petclinic:petclinic /opt
sudo chmod -R u+w /opt
```


