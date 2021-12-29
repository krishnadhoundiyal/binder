FROM ericssonkubernetes/jupyterlab_ext:version5
USER root
ENV PATH="/root/anaconda3/bin:/root/anaconda3/condabin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN export PATH="/root/anaconda3/bin:/root/anaconda3/condabin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN chmod +x /root/.bashrc
SHELL ["conda", "activate", "jupyterlab-ext", "/bin/bash", "-c"]
CMD ["conda","run","-n", "jupyterlab-ext","jupyter", "lab", "--allow-root","--ip","0.0.0.0"]
