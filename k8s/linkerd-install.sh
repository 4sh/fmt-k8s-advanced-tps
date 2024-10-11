#!/bin/sh

helm repo add linkerd https://helm.linkerd.io/stable
helm repo update

helm upgrade --install linkerd-crds linkerd/linkerd-crds -n linkerd --create-namespace

helm upgrade --install linkerd-control-plane -n linkerd \
  --set-file identityTrustAnchorsPEM=ca.crt \
  --set-file identity.issuer.tls.crtPEM=issuer.crt \
  --set-file identity.issuer.tls.keyPEM=issuer.key \
  -f linkerd-control-plane/values-ha.yaml \
  linkerd/linkerd-control-plane

sleep 30

helm upgrade --install linkerd-viz linkerd/linkerd-viz -n linkerd-viz --create-namespace