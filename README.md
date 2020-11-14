1. Create Kubernetes in AKS
2. Connect to AKS
3. Install Helm Chart
4. Install KEDA
      ```
      kubectl create namespace keda
      helm install keda kedacore/keda --namespace keda
      ```
5. Install func app for kubernetes
      ```
      func kubernetes install --namespace  {namespace name}
      ```
6. Make sure helm is installed in your system
7.  Deploy the queuetrigger function in kubernetes
      ```
      helm install queuetrigger ./KedaCharts 
      ```
8. Add data in the queue to see whether the pods run in virtual nodes
      ```
      kubectl get pods -o wide
      ```
