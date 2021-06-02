# Getting started with knative on your mac in 5 minutes

This guide will help you get started with knative on your mac in minutes

### PreReqs

* Docker running on your machine
* kubectl
* brew (optional)

### Components involved

* Kind (kubernetes in docker)
* Istio
* Knative
* KN cli

### Getting started

#### 1. Kind

Install kind following the steps [here](https://github.com/kubernetes-sigs/kind).

```bash
$ brew install kind
```

#### 2. Knative and Istio

Run the Makefile to install istio (1.10.0) and knative (0.23) 

```
$ make
```

#### 3. KN CLI

```
brew tap knative/client

brew install kn
```

#### 4. Create the service

```
$ kn service create gotest --image=ghcr.io/itsmurugappan/hw
```

#### 5. Call the service

```
$ curl http://gotest-default.127.0.0.1.nip.io 

{"status":"Status OK"}
```

#### Cleanup

```
$ kind delete cluster
```

#### Troubleshooting

If istio installation fails, please run the istio and knative installation again

```
make istio
make knative
```

#### Other Knative on KIND Repos

1. https://github.com/csantanapr/knative-kind
2. https://github.com/n3wscott/kind-for-knative

