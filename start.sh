#!/bin/bash

### https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh

### Simple startup; links only user profile

sshfs -o allow_other,default_permissions,IdentityFile=~/.ssh/id_rsa  y2845zha@linux.student.cs.uwaterloo.ca: waterloo/
