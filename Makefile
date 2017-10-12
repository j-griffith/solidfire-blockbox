CINDER_BRANCH ?= master# master, stable/ocata, refs/changes/67/418167/1
NAME_PREFIX ?= ""
PLATFORM ?= debian:stretch# ubuntu:xenial, centos:7
TAG ?= debian-cinder:latest

all: cinder

cinder:
	docker build https://git.openstack.org/openstack/loci.git \
		--build-arg PROJECT=cinder \
		--build-arg FROM=$(PLATFORM) \
		--build-arg PROJECT_REF=$(CINDER_BRANCH) \
		--tag $(TAG)
