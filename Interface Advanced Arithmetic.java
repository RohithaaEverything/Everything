public interface aad {
	 int divisor_sum(int n);

}


public class MyCalculator implements aad{
	public int divisor_sum(int n) {
		int sum=0;
		for(int i=1;i<=n;i++) {
			if(n%i==0) {
				sum=sum+i;
			}
		}
		return sum;
	}
}


import java.util.Scanner;
public class checking{
	public static void main(String[] args) {
   		Scanner sc=new Scanner(System.in);
   		System.out.println("enter a number:");
   		int num=sc.nextInt();
   		MyCalculator c=new MyCalculator ();
   		System.out.println(c.divisor_sum(num));
   }
}