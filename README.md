# DevSecOps Jenkins pipeline integrating different security tools in multiple stages of the pipeline
# Deployment using Helm charts
# kubernetes-configmap-reload
# Platform - EC2 instances

Pipeline Video:
--------
https://youtu.be/g-v9AsubOqY

Pre-requisites:
--------
    - Install Git
    - Install Maven
    - Install Docker
    - EKS Cluster
    
Clone code from github:
-------
    git clone https://github.com/vikash-kumar01/spring-cloud-kubernetes.git
    cd spring-cloud-kubernetes/kubernetes-configmap-reload
    
Build Maven Artifact:
-------
    mvn clean install
 
Build Docker image for Springboot Application
--------------
    docker build -t vikashashoke/kubernetes-configmap-reload .
  
Docker login
-------------
    docker login
    
Push docker image to dockerhub
-----------
    docker push vikashashoke/kubernetes-configmap-reload
    
Deploy Spring Application:
--------
    kubectl apply -f kubernetes-configmap.yml
    
Check Deployments, Pods and Services:
-------

    kubectl get deploy
    kubectl get pods
    kubectl get svc
    
Now Goto Loadbalancer and check whether service comes Inservice or not, If it comes Inservice copy DNS Name of Loadbalancer and Give in WebUI

    http://a70a89c22e06f49f3ba2b3270e974e29-1311314938.us-west-2.elb.amazonaws.com:8080/home/data
    
![2](https://user-images.githubusercontent.com/63221837/82123471-44f5f300-97b7-11ea-9d10-438cf9cc98a0.png)

Now we can cleanup by using below commands:
--------
    kubectl delete deploy kubernetes-configmap-reload
    kubectl delete svc kubernetes-configmap-reload

References
--------
1. Trufflehog : https://github.com/trufflesecurity/trufflehog
2. Snyk       : https://www.cyberithub.com/how-to-install-snyk-cli-with-npm-or-yarn-on-ubuntu-debian/#Step_1_Prerequisites
3. Cosign     : https://youtu.be/Hj4CAGwcN74
4. kube-score : https://github.com/zegl/kube-score
5. kube-bench : https://github.com/aquasecurity/kube-bench
6. OwaspZAP   : https://youtu.be/EEEiqWolrqQ
7. Jira       : https://youtu.be/i2I1xpVZjeM
8. Prometheus : https://www.coachdevops.com/2022/05/how-to-setup-monitoring-on-kubernetes.html
9. Grafana    : https://www.coachdevops.com/2022/05/how-to-setup-monitoring-on-kubernetes.html
