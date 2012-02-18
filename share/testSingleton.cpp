#include <stdio.h>

class DataBase
{
public:
	DataBase() { printf("Database constructor!\n"); }
	~DataBase() { printf("Database destructor!\n"); }
	static DataBase& Singleton() 
	{ 
		printf("DataBase Singleton 1\n");
		static DataBase s_singleton; 
		printf("DataBase Singleton 2\n");
		return s_singleton; 
	}
};

class Monitor
{
public:
	Monitor() { printf("Monitor constructor!\n"); }
	~Monitor() { printf("Monitor destructor!\n"); }
	static Monitor& Singleton() 
	{ 
		printf("Monitor Singleton 1\n");
		static Monitor s_singleton; 
		printf("Monitor Singleton 2\n");
		return s_singleton; 
	}
};

int main()
{
	printf("============main============\n");
	DataBase::Singleton();
	Monitor::Singleton();
	printf("============end of main============\n");
	return 0;
}