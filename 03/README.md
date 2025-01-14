## Exercise 03 - Scale Your Deployment with KEDA

In this exercise, you will configure your NGINX deployment to automatically scale based on the metrics you've exposed. You will accomplish this using KEDA (Kubernetes Event-Driven Autoscaling).

### Steps to Complete the Exercise

1. **Prepare Your Deployment**:
   - Copy your enhanced NGINX deployment configuration from Exercise 02, which includes the integrated metrics exporter, into the current working directory.

2. **Leverage KEDA for Autoscaling**:
   - Choose a relevant metric from your NGINX deployment that you wish to use as a basis for scaling. This could be a metric like request count, connections, etc.

3. **Define a ScaledObject**:
   - Create a KEDA `ScaledObject` resource to define your scaling logic. This resource should include:
     - A reference to your NGINX deployment.
     - The metric you selected as the trigger for scaling.
     - Threshold values that determine when scaling up or down should occur.
     - Optional configurations such as cooldown periods to stabilize scaling behavior.

4. **Deploy and Start Services**:
   - Start your application and supporting services using Tilt by executing:
     ```bash
     tilt up
     ```
   - This should initiate several services, including:
     - KEDA for managing autoscaling.
     - Prometheus for scraping and storing metrics.
     - NGINX for serving content.

5. **Load test your application**:
   - Use `k6` to load test your application. Alternatively you can use any other tool like `autocannon` or `ab`.

6. **Monitor and Validate Autoscaling**:
   - Verify that your NGINX deployment scales dynamically in response to the defined metric thresholds.
   - Use the Prometheus UI at `http://localhost:9090` to observe metric behavior and validate that the scaling actions are triggered appropriately by KEDA.

7. **Teardown Deployment**:
   - When you are finished testing and monitoring autoscaling, gracefully shutdown your deployment using:
     ```bash
     tilt down
     ```
