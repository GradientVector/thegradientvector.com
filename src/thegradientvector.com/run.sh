#!/usr/bin/env bash

if [ -f "/var/aspnet/thegradientvector.com/kestrel.sock" ]; then
  rm "/var/aspnet/thegradientvector.com/kestrel.sock"
fi

cd /var/aspnet/thegradientvector.com/approot
dotnet thegradientvector.com.dll --server.urls http://unix:/var/aspnet/thegradientvector.com/kestrel.sock

