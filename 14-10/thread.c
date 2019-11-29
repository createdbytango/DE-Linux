#include<stdio.h>
#include<pthread.h>

void main() 
{
	int pid = fork();

	if(pid==0)
	{
            printf("pid in child=%d and parent=%d\n",getpid(),getppid()); 
    	}
    else
	{
            printf("pid in parent=%d and child=%d\n",getpid(),pid);
    	}
}
