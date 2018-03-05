FROM ansible/awx_task
ADD requirements.yml /var/lib/awx/
USER root
RUN pip install -U pip
RUN pip install jsnapy jxmlease junos-eznc
RUN ansible-galaxy install -r /var/lib/awx/requirements.yml -p /etc/ansible/roles
RUN sed -i '/roles_path/s/^#//g' /etc/ansible/ansible.cfg
