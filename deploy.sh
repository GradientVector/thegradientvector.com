rm -r /var/aspnet/thegradientvector.com/approot/
mkdir -p /var/aspnet/thegradientvector.com/approot
cp bin/Debug/netcoreapp1.0/publish/ /var/aspnet/thegradientvector.com/approot
chown www-data:www-data /var/aspnet/thegradientvector.com/approot

