// testkukuku.cpp : 定义控制台应用程序的入口点。
//

#include <stdio.h>
#include <wchar.h>
#include <locale.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	char p1[] = "a我";
	wchar_t p2[10] = { 0 };
	wchar_t p3[] = L"a我";

	char* p555 = setlocale(LC_ALL, NULL);
	char* p = setlocale(LC_ALL, "zh_CN.gbk");
	//setlocale(LC_ALL, "zh_CN.UTF8");

 	int zz = mbstowcs(p2, p1, 3);
	int g1 = p1[0];
	int g2 = p1[1];
	int g3 = p1[2];

	int g4 = p2[0];
	int g5 = p2[1];

	int g6 = p3[0];
	int g7 = p3[1];

	wprintf(L"%x, %x, %x\n", g1, g2, g3);
	wprintf(L"%x, %x, \n", g4, g5);
	wprintf(L"%x, %x, \n", g6, g7);

 	wprintf(L"%ls\n", p2);
 	wprintf(L"%ls\n", p3);
 	wprintf(L"%d, %s\n", zz, p);
 	wprintf(L"old = %s\n", p555);
/*
	wchar_t p1[10] = L"我是";
	wchar_t p2[10] = L"中文";
	wcsncat(p1, p2, 1);
	wprintf(L"%ls\n", p2);
	wprintf(L"%ls\n", L"abcdef");
	wprintf(L"%ls\n", p1);
*/
	return 0;
}

