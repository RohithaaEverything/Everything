package rohitha;
import java.util.Scanner;
public class customer {
	long acc_no;
	float balance=10000;
	float b;
	float e;
	public static int c;
	Scanner sc=new Scanner(System.in);
	void print() {
		System.out.println("Enter Account number:");
		acc_no=sc.nextLong();
		System.out.println("Account number:"+acc_no);
		System.out.println("Balance:"+balance);
	}
	void withdraw() {
		System.out.println("Enter withdrawl money:");
		b=sc.nextFloat();
		try {
			if(b<balance) {
				System.out.println("Withdrawl money is:"+b);
				System.out.println("Remaining Balance is:"+(balance-b));
			}else if(b>balance) {
				throw new Exception("Insufficient Funds");
			}
		}catch(Exception a) {
			System.out.println("Insufficient Funds");
		}
	}
	void deposit() {
		System.out.println("Enter the depositing money:");
		e=sc.nextFloat();
		System.out.println("Deposited Money:"+e);
		System.out.println("Total Money is:"+(balance+e));
	}
	public static void main(String[] args) {
		customer s=new customer();
		Scanner sc=new Scanner(System.in);
		while(true) {
			c=sc.nextInt();
			switch (c) {
				case 1:
					s.print();
					break;
				case 2:
					s.withdraw();
					break;
				case 3:
					s.deposit();
					break;
				case 4:
					System.exit(1);
					break;
			}
		}
	}
}