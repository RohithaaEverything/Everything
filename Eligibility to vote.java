package java13;
import java.util.Scanner;
public class vote {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		try {
			if(a>18) {
				throw new Exception("Can't Vote");
			}
			else {
				System.out.println("You can vote");
			}
		}
		catch(Exception k) {
		    System.out.println(k);
		}
	}
}