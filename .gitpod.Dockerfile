FROM gitpod/workspace-full-vnc

RUN mkdir ~/development && cd ~/development && wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.2-stable.tar.xz && tar xf flutter_linux_3.19.2-stable.tar.xz 
RUN echo "export PATH='$PATH:~/development/flutter/bin'" > ~/.bashrc && source ~/.bashrc