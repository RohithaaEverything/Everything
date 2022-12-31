import java.util.*;
public class divison {
	public static void main(String args[]){
		int a;
		int b;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter a:");
		a=sc.nextInt();
		System.out.println("enter b:");
		b=sc.nextInt();
		try {
			System.out.println(a/b);	
		}
		catch(ArithmeticException e) {
			System.out.println("number cannot be divided by zero");
		}
	}
}