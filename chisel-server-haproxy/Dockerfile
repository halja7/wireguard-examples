# Use Fedora 39 as the base image
FROM fedora:39

# Install Chisel and common networking tools
RUN dnf install -y \
	curl \
	wget \
	iputils \
	net-tools \
	iproute \
	python3 \
	netcat \
	procps \
	&& dnf clean all

# Download and install Chisel
RUN curl -L https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_1.7.6_linux_amd64.gz -o chisel.gz \
	&& gunzip chisel.gz \
	&& chmod +x chisel \
	&& mv chisel /usr/local/bin/chisel

# Copy the start_client.sh script
COPY start_client.sh /usr/local/bin/start_client.sh
RUN chmod +x /usr/local/bin/start_client.sh

WORKDIR /app

# Set the entry point to the shell
# ENTRYPOINT ["/bin/sh", "-c"]
