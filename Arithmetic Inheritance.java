import java.util.*;
class Arithematic{
	int a;
	int b;
void add(){
	Scanner s=new Scanner(System.in);
        a=s.nextInt();
        b=s.nextInt();
        System.out.println("addition is:"+(a+b));
	}
public static void main(String[] args){
	Arithematic a=new Arithematic();
	a.add();
	}
}


class Adder extends Arithematic{
	public static void main(String[] args) {
		System.out.println("2");
		  Arithematic a=new Arithematic();
		  a.add();
	}
}