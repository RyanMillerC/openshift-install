# Generic OpenShift Install Configs

## How to use

```bash
# 1. Create your own environment file
$ cp env.template my-environment.env

# 2. Replace variables with your environment's info
$ vim my-environment.env

# 3. Source environment info
$ source my-environment.env

# 4. Generate your install-config.yaml
$ envsubst < templates/aws-install-config.yaml > install-config.yaml

# 5. Run OpenShift installer
$ openshift-install create cluster --log-level=debug
```
