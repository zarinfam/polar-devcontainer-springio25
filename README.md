## 💡 This fork modifies the original [Cloud Native Spring in Action](https://github.com/ThomasVitale/cloud-native-spring-in-action/tree/sb-3-main/Chapter11/11-end) (Chapter 11) and added Devcontainer configs to it.



# Applications deployment on a local Kubernetes cluster

Tilt is a convenient tool for setting up a local development workflow on Kubernetes.
We defined a Tiltfile in each application project to configure Tilt. When working on a specific
application, we can run `tilt up` from within the project.

In case we need to run all the applications locally, Tilt allows to combine multiple Tiltfiles
together and run multiple applications at once. If you want to do that, run `tilt up`
in this folder. Remember to start a local Kubernetes cluster and deploy the platform services first.

When each project is tracked in a separate Git repository, you can either ensure you check them out
in sibling folders on your localhost or let Tilt do that.

For more information, refer to [Many Tiltfiles and Many Repos](https://docs.tilt.dev/multiple_repos.html).

# Portforwarding in CDEs

`minikube ip --profile polar`

forward port 80 in IDE or Devcontainer 

`sudo socat TCP-LISTEN:80,fork TCP:localhost:CDE_FORWARDED_PORT`

