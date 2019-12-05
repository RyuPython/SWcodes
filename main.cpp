#include<cstdio>

int test, numbers, x, y;
int atom[1000][5];
long long energy;

int que[Sz];
int rear1,front1,size1;
void enque1(int x){
    rear1++;
    size1++;
    que[rear1%Sz]=x;
}
int deque1(){
    front1++;
    size1--;
    return que[front1%Sz];
}

int main(){
    scanf("%d", &test);
    for(int t=0; t<test; t++){
        scanf("%d", &numbers);
        for(int i=0; i<numbers; i++){
            scanf("%d", &x);
            scanf("%d", &y);
            atom[i][0] = x*2;
            atom[i][1] = y*2;
            scanf("%d", &atom[i][2]);
            scanf("%d", &atom[i][3]);
        }

        energy = 0;

        for(int i=0; i<4000; i++){
            for(int j=0; j<numbers; j++){
                if(atom[j][2]==0)atom[j][1]++;
                else if(atom[j][2]==1)atom[j][1]--;
                else if(atom[j][2]==2)atom[j][0]--;
                else if(atom[j][2]==3)atom[j][0]++;
                else printf("error");
            }

            for(int j=0; j<numbers-1; j++){
                if(atom[j][4]!=1){
                    energy += atom[j][3];
                    atom[j][4] = 1;
                    for(int k=j+1; k<numbers; k++){
                        if(atom[j][0]==atom[k][0] && atom[j][1]==atom[k][1]){
                            energy += atom[k][3];
                            atom[k][4] = 1;
                        }
                    }
                }
            }
        }

        printf("#%d %d", t, energy);
    }
}
