.PHONY: all kind istio knative

all: kind istio knative

kind:
	  echo "create kubernetes in docker cluster"
	  kind create cluster

istio: 
	  @echo "installing istio"
	  kubectl create ns istio-system
	  kubectl apply  -f istio/istio-1.5.1.yaml

knative: 
	  	@echo "installing knative"
	  	kubectl apply  -f knative/knative-0.15.yaml