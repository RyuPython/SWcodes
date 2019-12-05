import java.util.Scanner;

public class WordQuiz{
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		
		char[] alphabet = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
		char[][] All = new char[15][15];
		char[] answer = new char[15];
		int[][] correct = new int[100][2];
		boolean exist = true;
		int num = 0;
		int score[] = {0,0};
		int turn = 0;
		
		for(int x=0; x<100; x++){
			for(int i=0; i<15; i++){
				for(int j=0; j<15; j++){
					int m = (int)(Math.random()*26);
					All[i][j] = alphabet[m];
					
					System.out.print(All[i][j] + " ");
				}
				System.out.println("");
			}
			
			System.out.println(turn+1 + "P: ");
			
			String s = sc.next();
			
			if(s=="end"){
				System.out.print("agree?");
				String agree = sc.next();
				if(agree == "yes")score[turn]+=3;
				else score[turn]--;
			}else{
				for(num=0; num<15; num++){
					char c = s.charAt(num);
					answer[num] = c;
				}
			
				int n=0;
				for(int k=0; k<num; k++){
					for(int i=0; i<15; i++){
						for(int j=0; j<15; j++){
							if(answer[k]==All[i][j]){
								correct[n][0]=i;
								correct[n][1]=j;
								n++;
							}
						}
					}
				}
				
				if(All[correct[0][0]+1][correct[0][1]+1]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]+k][correct[j][1]+k]!=answer[k])exist=false;
						}	
					}
				}else if(All[correct[0][0]+1][correct[0][1]]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]+k][correct[j][1]]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]+1][correct[0][1]-1]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]+k][correct[j][1]-k]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]][correct[0][1]+1]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]][correct[j][1]+k]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]][correct[0][1]-1]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]][correct[j][1]-k]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]-1][correct[0][1]]==answer[0]+1){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]-k][correct[j][1]+k]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]-1][correct[0][1]]==answer[0]){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]-k][correct[j][1]]!=answer[k])exist=false;
						}
					}
				}else if(All[correct[0][0]-1][correct[0][1]]==answer[0]-1){
					for(int j=0; j<n-1; j++){
						for(int k=1; k<num; k++){
							if(All[correct[j][0]-k][correct[j][1]+k]!=answer[k]-k)exist=false;
						}
					}
				}else exist=false;
				
				if(exist==true)score[turn]++;
			}
			
			if(turn==0) turn = 1;
			else turn = 0;
		}
	}
}