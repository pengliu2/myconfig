#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char * argv[])
{
	if (argc < 2) {
		printf("Usage: setproxy on|off\n");
		return 1;
	}

	if (strncmp(argv[1], "on", 2) == 0) {
			system("rm -f /etc/polipo/config; cp /etc/polipo/work.config /etc/polipo/config");
	}
	else if (strncmp(argv[1], "off", 3) == 0) {
			system("rm -f /etc/polipo/config; cp /etc/polipo/home.config /etc/polipo/config");
	}
	else {
			return 1;
	}

	system("/usr/sbin/service polipo restart");

	return 0;
}
