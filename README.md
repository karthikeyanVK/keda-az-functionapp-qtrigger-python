1. Create Kubernetes in AKS
2. Install Helm Chart
3. Install KEDA
   ```
   kubectl create namespace keda
   helm install keda kedacore/keda --namespace keda
   ```
4. Install func app for kubernetes
   ```
   func kubernetes install --namespace  {namespace name}
   ```
5. Make sure helm is installed in your system
6.  Deploy the queuetrigger function in kubernetes
   ```
     helm install queuetrigger ./KedaCharts --namespace {namespace name}
   ```


