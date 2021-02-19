#!/bin/sh

POD_NAME=$(oc get pods -l deploymentconfig=mysql -o name)
oc port-forward $POD_NAME 30306:3306 &
RC=$!
sleep 5
mysql -utest -predhat -h127.0.0.1 -P30306 testdb < users.sql
kill $RC
