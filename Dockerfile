# Build me with "docker build -t ansiblesh ."
FROM dockerfile/ansible
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y dnsutils sshpass
ENV ANSIBLE_HOST_KEY_CHECKING false
ADD . /tmp/
CMD /tmp/entry.sh
