FROM ansible/awx_task
ADD requirements.yml /var/lib/awx/
USER root
RUN /var/lib/awx/venv/bin/activate && pip install jsnapy jxmlease junos-eznc
RUN ansible-galaxy install -r /var/lib/awx/requirements.yml -p /etc/ansible/roles
RUN sed -i '/roles_path/s/^#//g' /etc/ansible/ansible.cfg
