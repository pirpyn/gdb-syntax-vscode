int glob=2;
int f(void)
{
LABEL_F:
	return 2;
}
int main(void)
{
	int loc=1;
LABEL:
	loc=f();
	return 0;
}