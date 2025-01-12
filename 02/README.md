## Exercise 02 - Exporting Metrics from NGINX

In this exercise, you will enhance your existing NGINX deployment by integrating a metrics exporter. This will facilitate the collection and tracking of key NGINX metrics. Follow the steps outlined below to configure and visualize these metrics using Prometheus.

### Steps to Complete the Exercise

1. **Prepare Your Deployment**:
   - Copy your previously created NGINX deployment files into the current working directory. This should include both the deployment and service configurations.

2. **Integrate a Metrics Exporter**:
   - Select a Prometheus-compatible exporter for NGINX.
   - Update your deployment configuration to include the metrics exporter.

3. **Configure Metrics Exposure**:
   - Ensure that metrics are accessible on a designated port (e.g., 9113). Adjust the configuration as necessary to expose this port.

4. **Deploy and Verify Metrics Availability**:
   - Use Tilt for a seamless deployment process by executing the following command:
     ```bash
     tilt up
     ```
   - Verify that the exporter is serving metrics by accessing `http://localhost:9113/metrics`. Note that the port might differ based on your specific deployment configuration.

5. **Monitor Metrics with Prometheus**:
   - Your `tilt up` command should also start a Prometheus server locally. Ensure it is properly configured to scrape metrics from your NGINX deployment.
   - Access the Prometheus UI at `http://localhost:9090` to confirm that NGINX metrics are being scraped and are available for monitoring and analysis.

6. **Teardown Deployment**:
   - When you have completed your metrics setup and verification, you can take down the deployment using:
     ```bash
     tilt down
     ```
