#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
	int pid,pip[2];
	char s1[30]="This Is My Operating System";
	char s2[30]=" Project";
	char arra[35];
	 pipe(pip);
	 pid=fork();
	 if(pid>0)
	 {
		 close(pip[0]);
	 }
	 else
	 {
		 close(pip[1]);
		 read(pip[0],arra,30);
		 strcat(arra,s1);
		 strcat(arra,s2);
		 printf("%s",arra);
	 }
	return 0;
}
