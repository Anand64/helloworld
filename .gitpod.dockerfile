FROM gitpod/workspace-full

RUN sudo apt update \
&& sudo apt install -y valgrind \
&& sudo rm -rf /var/lib/apt/lists/*

