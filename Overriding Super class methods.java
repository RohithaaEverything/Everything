public class sportsclass {
	void getname() {
		System.out.println("name of the sport");
	}
	public int getnumberofteammembers() {
		return 0;
	}
}

public class socerclass extends sportsclass{
	void getname() {
		System.out.println("Soccer");}
	public  int getnumberofteammembers() {
		return 11;
	}

public static void main(String[] args) {
	sportsclass a=new sportsclass();
	a.getname();
	System.out.println(a.getnumberofteammembers());
	socerclass b=new socerclass();
	System.out.println(b.getnumberofteammembers());
	b.getname();
	}
}