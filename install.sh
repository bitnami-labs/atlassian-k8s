#!/bin/bash


case ${1} in
  create)
     kubectl create -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bamboo/deploy.yaml
     kubectl create -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bamboo/svc.yml
     kubectl create -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bitbucket/deploy.yaml
     kubectl create -f  https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bitbucket/svc.yml
     ;;
  delete)
     kubectl delete -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bamboo/deploy.yaml
     kubectl delete -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bamboo/svc.yml
     kubectl delete -f https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bitbucket/deploy.yaml
     kubectl delete -f  https://raw.githubusercontent.com/jbianquetti-nami/atlassian-k8s/master/bitbucket/svc.yml
     ;;
   *)
     echo 'Option not recognized'
esac
