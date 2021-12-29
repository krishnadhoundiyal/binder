FROM ericssonkubernetes/jupyterlab_ext:version5
USER root
COPY exec.sh /
COPY bashrc /root/.bashrc
ENV PATH="/root/anaconda3/bin:/root/anaconda3/condabin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN export PATH="/root/anaconda3/bin:/root/anaconda3/condabin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN chmod +x /root/.bashrc
SHELL ["/bin/bash","--login", "-c"]
RUN conda activate jupyterlab-ext
SHELL ["conda", "activate", "jupyterlab-ext", "/bin/bash", "-c"]
#RUN ["/bin/bash", "-c", "source /root/.bashrc"]
#RUN ["/bin/bash", "-c","conda activate jupyterlab-ext"]
CMD ["conda","run","-n", "jupyterlab-ext","jupyter", "lab", "--allow-root","--ip","0.0.0.0"]
#CMD ["/bin/bash", "/exec.sh"]

