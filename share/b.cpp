//我是一个好人啊

//我是一个好人啊

//我是一个好人啊
#include <stdlib.h>
#include <stdio.h>
#include <wctype.h>
#include <locale.h>
#include <iconv.h>
//我是一个好人啊

typedef unsigned long long uint64;
typedef long long int64;

int main()
{
	wchar_t a[10] = L"我是ab";
	char b[20] = { 0 };
	setlocale(LC_CTYPE, "zh_CN.utf8");
	int copyLength = wcstombs(b, a, 10);

	printf("%d\n%s", copyLength, b);

	getchar();
	return 0;
}

