#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
	int i;
	char *str;

	for (i = 1; i < argc; i ++) {
		if ((str = strrchr(argv[i], '.')) != NULL) {
			printf("%s", str + 1);
		} else {
			printf("%s", "nil");
		}
	}
	return 0;
}
