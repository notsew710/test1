#!/bin/bash

    vmName=$1

    createdVm=$(az vm list --query [].name | grep -E $VMname)
    if [ -z $createdVm ]; then 
            az vm create --name $VMname \
            --resource-group $DreamTeam \
            --image UbuntuLTS \
            --size B1S \
            --location southcentralus 



            echo "Welcome to your virtual machine"
    else
        exit 1
    fi