#!/bin/bash

# Set the name of your Azure DNS zone
ZONE_NAME="sbcaas.cloud"

# Get the list of DNS records from the zone
RECORDS=$(az network dns record-set list -g lz-sbcaas-rg-caf-shared-services --zone-name $ZONE_NAME --query "[].{name: name, type: type, ttl: ttl, records: nsRecords || aRecords || aaaaRecords || mxRecords || ptrRecords || srvRecords || txtRecords}" -o json)

# Loop through the records and create Terraform variables for each one
for record in $(echo $RECORDS | jq -c '.[]'); do
    name=$(echo $record | jq -r '.name')
    type=$(echo $record | jq -r '.type')
    ttl=$(echo $record | jq -r '.ttl')
    value=$(echo $record | jq -c '.records')
    # Format the value as a Terraform list
    value=$(echo $value | sed 's/\[//;s/\]//;s/,//g')
    # Create a Terraform variable for this record
    echo "$type = {" >> "dns_records.tfvar"
    echo "  $name = {" >> "dns_records.tfvar"
    echo "    name = \"$name\"" >> "dns_records.tfvar"
    echo "    ttl = $ttl" >> "dns_records.tfvar"
    echo "    record = \"$value\"" >> "dns_records.tfvar"
    echo "    }" >> "dns_records.tfvar"
    echo "  }" >> "dns_records.tfvar"
    echo "}" >> "dns_records.tfvar"
done
