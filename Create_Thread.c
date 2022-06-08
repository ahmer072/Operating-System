#include<stdio.h>
#include<pthread.h>
#include<stdlib.h>
#define MAX 3
int MatA[3][3];
int MatB[3][3];
int Mult[3][3];
int Add[3][3];
void * multiply()
{
        int sum=0;
for(int i=0;i<3;i++)
{
for(int j=0;j<3;j++)
{
for(int k=0;k<3;k++)
{
sum=sum+(MatA[i][k]*MatB[k][j]);
}
Mult[i][j]=sum;
sum=0;
}
}
}
void * add()
{
for(int i=0;i<3;i++)
{
for(int j=0;j<3;j++)
{
Add[i][j]=MatA[i][j]+MatB[i][j];
}
}
}
int main()
{
pthread_t tid[MAX];
for(int i=0;i<3;i++)
{
for(int j=0;j<3;j++)
{
MatA[i][j]=rand()%10;
}
}
for(int i=0;i<3;i++)
{
for(int j=0;j<3;j++)
{
MatB[i][j]=rand()%10;
}
}
printf("Matrix A is:\n");
for(int i=0;i<3;i++)
{
printf("\n");
for(int j=0;j<3;j++)
{
printf("%d\t",MatA[i][j]);
}
}

printf("\n\nMatrix B is:\n");
for(int i=0;i<3;i++)
{
printf("\n");
for(int j=0;j<3;j++)
{
printf("%d\t",MatB[i][j]);
}
}


pthread_create(&tid[0],NULL,multiply,NULL);
pthread_create(&tid[1],NULL,add,NULL);
pthread_join(tid[0],NULL);
pthread_join(tid[1],NULL);

printf("\n\nMUTIPLIED MATRIX is:\n");
for(int i=0;i<3;i++)
{
printf("\n");
for(int j=0;j<3;j++)
{
printf("%d\t",Mult[i][j]);
}
}


printf("\n\nAdded Matrix is:\n");
for(int i=0;i<3;i++)
{
printf("\n");
for(int j=0;j<3;j++)
{
printf("%d\t",Add[i][j]);
}
}
return 0;
}
       