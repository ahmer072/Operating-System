#include<stdio.h>

#include<stdlib.h>

#include<sys/types.h>

#include<unistd.h>

int main()

{

    int a[10]={12,48,35,33,11,29,22,28,16,24};

    printf("\n\n=> THE UNSORTED ARRAY IS :\n\n ");

    for(int i = 0 ; i< 10 ; i++ )

    {
       printf(" %d",a[i]);
    }

    int pid;

    pid = fork();

    int c = 0;

    if (pid != -1)
    {

        if (pid == 0)
        {

            for (int i =0; i< 10; i++)

            {

                for (int j =0; j < 10; j++)

                {

                    if ( a[i] < a[j] )

                    {

                        c = a[i];

                        a[i] = a[j];

                        a[j] = c;

                    }
                }

            }

            printf ("\n\n=> THE SORTED ARRAY IS: \n\n");

            for (int i=0; i<10; i++)

            {

                printf (" %d",a[i]);

            }

        }

    }

    else

    {

        printf ("ERROR!!");

    }
    return 0;
}
