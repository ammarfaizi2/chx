
extern char check_input(char *rdi);
extern void read_input(char *rdi);
extern void run_action(char *rdi);

int main()
{
	char input[1024];
	read_input(input);
	if (check_input(input)) {
		run_action(input);
		return 0;
	}
	return 1;
}
