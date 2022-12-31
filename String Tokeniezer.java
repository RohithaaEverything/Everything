import java.util.Scanner;
import java.util.StringTokenizer;
	public class tokens1 {
	    
	class Animal {
		void walk(){
	public static void main(String[] args) {
	        Scanner sc=new Scanner(System.in);
	        String j=sc.nextLine();
	        int k=0;
	        StringTokenizer st=new StringTokenizer(j," ");
	        while(st.hasMoreTokens()){
	            int l=0;
	            l= Integer.parseInt(st.nextToken());
	            System.out.println(l);
	            k+=l;
	        }
	        System.out.println("sum of numbers:"+k);
	    }
	}