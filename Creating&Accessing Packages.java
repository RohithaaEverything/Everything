package package1;
public class class1 {
	public void name() {
		System.out.println("welcome to package1");
	}
}


package package2;
import package1.class1;
public class class2 {
	public static void main(String[] args) {
	class1 a=new class1();
	a.name();
	}
}