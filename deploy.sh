#!/bin/bash

cd infra
terraform output -raw instance_ip > ../ansible/hosts
