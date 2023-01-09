# AWS EKS Cluster Infrastructure

To update kubeconfig run the following command:
```
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
```

To verify cluster setup run the following command:
```
kubectl cluster-info
```
