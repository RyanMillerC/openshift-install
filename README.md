# Generic OpenShift Install Configs

## How to use

```bash
# 1. Create your own environment file
$ cp env.template my-environment.env

# 2. Replace variables with your environment's info
$ vim my-environment.env

# 3. Generate your install-config.yaml
$ envsubst < aws-install-config.yaml > install-config.yaml

# 4. Run OpenShift installer
$ openshift-install create cluster --log-level=debug
```
