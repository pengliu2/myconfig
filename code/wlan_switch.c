#include <stdio.h>
#include <string.h>

int main(int argc, char * argv[])
{
	char cmd[256];
	if (argc < 3) {
		printf("Usage: wlan_switch on|off\n");
		return 1;
	}

	if (strncmp(argv[2], "on", 2) == 0) {
	}
	else if (strncmp(argv[2], "off", 3) == 0) {
	}
	else {
		return 1;
	}
	system("rm -f /etc/privoxy/config; cp /etc/privoxy/home.config /etc/privoxy/config");

	return 0;
}
