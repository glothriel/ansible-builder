default:
	docker build . -t ansible-builder:latest ;\
    docker run --user $$UID -w /tmp -v $$(pwd)/artifacts:/opt/artifacts -it ansible-builder /usr/bin/ansible-builder
