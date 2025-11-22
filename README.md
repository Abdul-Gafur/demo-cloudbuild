# Cloud Build CI/CD Demo

A simple Apache web server deployment using Google Cloud Build CI/CD pipeline.

## Files
- `index.html` - Main web page
- `cloudbuild.yaml` - CI/CD pipeline configuration

## Deployment
This application is automatically deployed to Compute Engine VMs via Cloud Build.

Every push to the main branch triggers:
1. Build process
2. Tests
3. Deployment to staging
4. Deployment to production

## Manual Testing
```bash
curl http://STAGING_VM_IP
curl http://PROD_VM_IP
```