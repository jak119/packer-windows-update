FROM hashicorp/packer:light

RUN mkdir -p /tmp/windows-update
RUN wget https://github.com/rgl/packer-provisioner-windows-update/releases/download/v0.5.1/packer-provisioner-windows-update-linux.tgz -P /tmp/windows-update
RUN cd /tmp/windows-update && tar -xzvf packer-provisioner-windows-update-linux.tgz
RUN mv packer-provisioner-windows-update /bin/
RUN chmod 755 /bin/packer-provisioner-windows-update
RUN chown root:root /bin/packer-provisioner-windows-update
RUN rm -rf /tmp/windows-update

WORKDIR $GOPATH
ENTRYPOINT ["bin/packer"]
