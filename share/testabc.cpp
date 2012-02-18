#include <string.h>

int main()
{
	char s[32];
	memset(s, -1, sizeof(s));
	strlcpy(s, "abc", 32);

	return 0;
}
