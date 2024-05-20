# Use Fedora 39 as the base image
FROM fedora:39

# Install Chisel and common networking tools
RUN dnf install -y \
	curl \
	wget \
	iputils \
	net-tools \
	&& dnf clean all

# Download and install Chisel
RUN curl -L https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_1.7.6_linux_amd64.gz -o chisel.gz \
	&& gunzip chisel.gz \
	&& chmod +x chisel \
	&& mv chisel /usr/local/bin/chisel

# Set the entry point to chisel
ENTRYPOINT ["chisel"]
