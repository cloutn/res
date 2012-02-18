#include <stdio.h>
#include <iconv.h>
#include <locale.h>

int main()
{
	const char* pFrom = "UCS-4";
//	const char* pTo 	= "zh_CN.utf-8";
	const char* pTo 	= "UTF-8";
	const char* currentLocale = setlocale(LC_CTYPE, 0);
//	printf("%s", currentLocale);
	wchar_t* p 			= L"我是ab";
	iconv_t cd3 = iconv_open(pTo, pFrom);
	char out[20] = { 0 };
	char* pOut = out;
	int inL = 10;
	int outL = 20;
	iconv(cd3, (char**)&p, (size_t*)&inL, &pOut, (size_t*)&outL);
	//iconv_close(cd3);

	for (int i = 0; i < 20; ++i)
	{
		printf("%d ", out[i]);
	}
	printf("\n");

	printf("=====\n");
	for (int i = 0; i < 4; ++i)
	{
		printf("%d ", p[i]);
	}
	printf("\n");
	
//	printf("ab");
	return 0;
}
