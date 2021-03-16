#! /bin/bash

# configure tekton CLI
export PATH="/home/sambit/Documents/tekton/tkn-linux-amd64-0.13.1:$PATH"

tkn pipeline start pl-gitpull-mavenbuild1 \
	-w name=ws,claimName=workspace-pvc \
	-p git-url=https://github.com/sambitc/hello-docker.git \
	-p git-revision=f08b2c2b228092c473c21fe67ec406ca5d31ee09 \
	-p image=docker.io/sambitc/hello-docker:tkn \
	--serviceaccount=pl-sa
	

