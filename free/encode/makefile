#====================================
# define
#====================================
COMPILE_OPTIONS =   -O0 -g3 -Wall -c -fmessage-length=0 -finput-charset=GBK -MMD -MP

OBJECT_FILE_LIST = \
./make/base64.o \
./make/md5.o \
./make/sha1.o 

#====================================
# target file
#====================================
./make/libencode.a : prepare $(OBJECT_FILE_LIST) 
	ar -rc ./make/libencode.a $(OBJECT_FILE_LIST);\
rm -f .//../lib/libencode.a;\
cp ./make/libencode.a .//../lib/libencode.a 


#====================================
# object files
#====================================
./make/base64.o : ./base64.cpp
	g++ $(COMPILE_OPTIONS) -MF"./make/base64.d" -MT"./make/base64.d" -o"./make/base64.o" "./base64.cpp" 2>> ./make/result.txt 

./make/md5.o : ./md5.cpp
	g++ $(COMPILE_OPTIONS) -MF"./make/md5.d" -MT"./make/md5.d" -o"./make/md5.o" "./md5.cpp" 2>> ./make/result.txt 

./make/sha1.o : ./sha1.cpp
	g++ $(COMPILE_OPTIONS) -MF"./make/sha1.d" -MT"./make/sha1.d" -o"./make/sha1.o" "./sha1.cpp" 2>> ./make/result.txt 


#====================================
# prepare
#====================================
prepare : 
	rm -r -f ./make;mkdir ./make

#====================================
# clean
#====================================
clean : 
	rm -r -f ./make
