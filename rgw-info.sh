#!/bin/bash

#RGW_NAME=client.radosgw.sieltect-2-mz-1
# pip install pjson

PREFIX='client.radosgw.sieltect-2'
for rgw_name in `ceph-conf --list-sections $PREFIX`;
do
  echo "[$rgw_name]"
  radosgw-admin region list --name $rgw_name  | pjson
  radosgw-admin zone list --name $rgw_name | pjson
  echo "+++UTENTI+++"
  radosgw-admin metadata list user --name $rgw_name | pjson

  #radosgw-admin region get sieltect-2 --name $RGW_NAME | pjson

done

#echo "REGIONI"
#radosgw-admin region list --name $RGW_NAME  | pjson
#radosgw-admin region get sieltect-2 --name $RGW_NAME | pjson
#echo "ZONE"
#radosgw-admin zone list --name $RGW_NAME | pjson
