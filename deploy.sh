#!/usr/bin/env bash

dotnet publish

#ssh root@thegradientvector.com "rm -fr /var/aspnet/thegradientvector.com/approot/*; mkdir -p /var/aspnet/thegradientvector.com/approot; chown www-data:www-data /var/aspnet/thegradientvector.com/approot"
#scp -r bin/Debug/netcoreapp1.0/publish/ root@thegradientvector.com:/var/aspnet/thegradientvector.com/approot/ 
#ssh root@thegradientvector.com "chown -R www-data:www-data /var/aspnet/thegradientvector.com/approot/; chmod +x /var/aspnet/thegradientvector.com/approot/run.sh"

rm -r /var/aspnet/thegradientvector.com/approot/
mkdir -p /var/aspnet/thegradientvector.com/approot
cp -r bin/Debug/netcoreapp1.0/publish/* /var/aspnet/thegradientvector.com/approot
cp run.sh /var/aspnet/thegradientvector.com/approot/
chown -R www-data:www-data /var/aspnet/thegradientvector.com/approot

# TODO - maybe comment this out once I figure out how to do it right?
/var/aspnet/thegradientvector.com/approot/run.sh &
chown www-data:www-data /var/aspnet/thegradientvector.com/kestrel.sock

