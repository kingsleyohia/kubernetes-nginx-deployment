## Exercise 01 - Deploy NGINX

In this exercise, you will deploy an NGINX server on a local Kubernetes cluster using either Helm or Kustomize. Your deployment should, at a minimum, include the following components:

- **Deployment**: Defines the desired state for running your NGINX containers.
- **Service**: Exposes the NGINX deployment to enable external access.

### Steps to Complete the Exercise

1. **Setup the Deployment**:
   - Choose your preferred tool for managing Kubernetes resources: 
     - [Helm](https://helm.sh/docs/helm/helm_install/): Helm is a package manager for Kubernetes applications.
     - [Kustomize](https://github.com/kubernetes-sigs/kustomize): Kustomize offers a template-free way to customize application configuration.

2. **Start a Local Kubernetes Cluster**:
   - Use a tool of your choice to create a local Kubernetes cluster. Popular options include:
     - [Minikube](https://minikube.sigs.k8s.io/docs/): A tool that easily sets up a local Kubernetes cluster.
     - [Kind](https://kind.sigs.k8s.io/docs/user/quick-start): A tool for running local Kubernetes clusters using Docker container nodes.

3. **Deploy NGINX**:
   - Implement your NGINX deployment in the Kubernetes cluster using your chosen tool (Helm or Kustomize).
   - After deployment, verify that your NGINX service is accessible on `http://localhost:3000`.

Ensure your deployment is configured according to standard practices, but keep it simple to avoid overengineering.

4. **Use Tilt for Local Development**:
   - Start the application using Tilt by executing:
     ```bash
     tilt up
     ```
   - Adjust the `Tiltfile` if necessary, depending on the resource names you used in your deployment configuration.

5. **Shutdown the Deployment**:
   - To teardown your Kubernetes resources, execute:
     ```bash
     tilt down
     ```

Ensure you follow best practices for Kubernetes resource definitions while keeping the configuration straightforward.