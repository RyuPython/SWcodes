#include <stdio.h>
#include <stdlib.h>
int test, days;
long long profit;
int price[1000000];

int main()
{
    scanf("%d", &test);
    for(int T=1; T<=test; T++){
        scanf("%d", &days);
        for(int i=0; i<days; i++){
            scanf("%d", price+i);
        }

        int count = 0;
        int profits[1024], highp[1024], numbers[1024];
        profits[count] = 0;
        highp[count] = price[0];
        numbers[count] = 1;

        for(int d=1; d<=days; d++){
            if(price[d-1]<=price[d]){
                numbers[count]++;
                highp[count] = price[d];
                profits[count] += (price[d]-price[d-1]) * (numbers[count]-1);
            }else{
                while(count>0){
                    if(highp[count]>=highp[count-1]){
                        profits[count-1] += (highp[count]-highp[count-1]) * numbers[count-1] + profits[count];
                        highp[count-1] = highp[count];
                        numbers[count-1] += numbers[count];
                        highp[count] = price[d];
                        profits[count] = 0;
                        numbers[count] = 0;
                        count--;
                    }else break;
                }
                count++;
                numbers[count]=1;
                highp[count]=price[d];
            }
        }

        while(count>0){
            if(highp[count]>=highp[count-1]){
                profits[count-1] += (highp[count]-highp[count-1]) * numbers[count-1] + profits[count];
                highp[count-1] = highp[count];
                numbers[count-1] += numbers[count];
                highp[count] = 0;
                profits[count] = 0;
                numbers[count] = 0;
                count--;
            }else break;
        }


        for(int i=0; i<count; i++){
            profit += profits[i];
        }

        printf("#%d %d\n", T, profit);
    }

    return 0;
}
