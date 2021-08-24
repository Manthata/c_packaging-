echo " Set up an m4 environment"
aclocal 
sleep 5
echo "Generate configure from configure.ac"
autoconf 
sleep 5
echo "Generate Makefile.in from Makefile.am"
automake --add-missing
sleep 5
echo "Generate configure file "
./configure
sleep 5
echo "Generate distribution whatever"
make dist
echo "test distribution"
make distcheck


