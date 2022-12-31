package abstact;
public abstract class Abstractclass {
	 abstract int noofsides();
}


package abstact;
public class Trapezoid extends Abstractclass{
	public int noofsides(){
		return 4;
	}
}


package abstact;
public class Triangle extends Abstractclass{
	public int noofsides(){
		return 3;
	}
}


package abstact;
public class Hexagon extends Abstractclass{
	public int noofsides(){
		return 6;
	}


/main class/
public static void main(String[] args) {
	Trapezoid a=new Trapezoid();
    System.out.println(a.noofsides());
	Triangle b=new Triangle();
	System.out.println(b.noofsides());
	Hexagon c=new Hexagon();
    System.out.println(c.noofsides());
    }
}