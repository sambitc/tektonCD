#! /bin/bash

# configure tekton CLI
export PATH="/home/sambit/Documents/tekton/tkn-linux-amd64-0.13.1:$PATH"

tkn pipeline start pl-hello-docker-s2i \
	-p image=docker.io/sambitc/hello-docker:s2i \
	-r app-git=git-hello-docker \
	-w name=ws,claimName=workspace-pvc \
	--serviceaccount=build-bot
