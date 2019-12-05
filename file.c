#include <stdio.h>

int main()
{
    int a;
    FILE *fp1;
    char fpname[1024];
    while(1)
    {
        printf("File name?? ");
        fp1 = fopen("C::\\User_manual\\secret.txt", "r");
        if(!fp1)
        {
            printf("BBBBBEEEEEEKKKKKKK\n");
        }
        if(fp1){
        for(int i =0; i<5; i++)
        {
            fscanf(fp1, "%d", &a);
            printf("%d", a);
            a=0;
        }
        }
        fclose(fp1);
        printf("\n");
    }
}
