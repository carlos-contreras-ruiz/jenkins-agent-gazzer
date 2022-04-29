# jenkins-agent-gazzer

This repository contains the Dockerfile that can build an image using the Omnitracs Jenkins agent as a base and install ruby and the gazer gem.

Using this image we can run gazer commands in a Jenkins agent.

# Openshift files

These YAML files are for interacting with Openshift, it's important to change the namespace to match the namespace where they will be installed.
We can apply these yaml files on Openshift using the command **oc apply -f nameofthefile.yaml** .

# Another way to build the image

In case We want to use a different Jenkins Agent, there is a way how to do it using the official Jenkins Agent image in the file **DockerfileTest.txt**.
