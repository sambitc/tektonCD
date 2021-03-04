#! /bin/bash

# configure tekton CLI
export PATH="/home/sambit/Documents/tekton/tkn-linux-amd64-0.13.1:$PATH"

tkn pipeline start pl-gitpull-mavenbuild1 \
	-w name=ws,claimName=workspace-pvc \
	-p git-url=https://github.com/sambitc/hello-docker.git \
	-p git-revision=6aacda29659f1bef32fe81a1cdf8782be6e597f7 \
	-p image=docker.io/sambitc/hello-docker:tkn \
	--serviceaccount=pl-sa
	

