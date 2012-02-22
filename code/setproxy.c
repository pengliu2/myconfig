#include <stdio.h>
#include <string.h>

int main(int argc, char * argv[])
{
	if (argc < 2) {
		printf("Usage: setproxy on|off\n");
		return 1;
	}

	if (strncmp(argv[1], "on", 2) == 0) {
		system("rm -f /etc/privoxy/config; cp /etc/privoxy/work.config /etc/privoxy/config");
	}
	else if (strncmp(argv[1], "off", 3) == 0) {
		system("rm -f /etc/privoxy/config; cp /etc/privoxy/home.config /etc/privoxy/config");
	}
	else {
		return 1;
	}

	system("/usr/sbin/service privoxy restart");

	return 0;
}
