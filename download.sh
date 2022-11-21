#!/bin/bash

VERSION="$1"

if [[ -z "$VERSION" ]] ; then
    echo "Available openshift_install versions:"
    curl -L -s https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/ \
        | grep '<span class="name">' \
        | sed -e 's/^.*<span class="name">\(.*\)<\/span>/\1/g' \
        | sort
else
    echo "Downloading openshift_install version $VERSION..."
    curl -L \
         -o "openshift-install-linux-$VERSION.tar.gz" \
         "https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/$VERSION/openshift-install-linux.tar.gz"
fi
