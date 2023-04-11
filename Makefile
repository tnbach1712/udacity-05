setup:
	# Create python virtualenv & source it
	
install:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && chmod +x ./hadolint
	yarn install
test:
	# TO DO
	# Yarn test

lint:

	./hadolint Dockerfile
	yarn lint
all: install lint test
