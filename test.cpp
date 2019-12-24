
#include <stdlib.h>

extern "C" {
	extern char check_input(char *rdi, void *rsi);
	extern void read_input(char *rdi);
	extern void run_action(char *rdi);

	int main()
	{
		char input[1024];
		read_input(input);
		if (check_input(
			input,
			(void *)(((size_t)run_action) - 
				('T' + 1) - ('e' + 2) - ('a' + 3) -
				('I' + 4) - ('n' + 5) - ('s' + 6) -
				('i' + 7) - ('d' + 8) - ('e' + 9) -
				('1' + 10) - ('2' + 11) - ('3' + 12) -
				('\n' + 13)
			)
		)) {
			return 0;
		}
		return 1;
	}
}
