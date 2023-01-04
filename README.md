# Generic OpenShift Install Configs

## How to use

```bash
# 1. Create your own environment file
$ cp templates/aws-install-config.yaml install-config.yaml

# 2. Replace lines marked TODO with your environment's info
$ vim install-config.yaml

# 3. BACK UP install-config.yaml !!!
# The openshift-installer will destroy this file!
# You might need it again!
# Also remember that this file has secrets in it!

# 4. Download openshift-install
$ ./download.sh         # Get available versions
$ ./download.sh 4.11.16 # Download openshift-install for OCP 4.11.16

# 5. Run OpenShift installer
$ ./openshift-install create cluster --log-level=debug
```
