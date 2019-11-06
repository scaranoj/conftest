package main

warn[msg] {
  input.kind = "Deployment"
  not input.spec.template.spec.securityContext.runAsUser = true
  msg = "WARN - Containers must specify a non-root user. Ensure the pod is not running as root."
}

deny[msg] {
  input.kind = "Deployment"
  not input.spec.template.spec.volumes.hostpath
  msg = "FAIL - Containers must not use hostpath. Choose an alternate volume type"
}
