class Animal{
	void walk(){
		System.out.println("It can walk");
		}
	}
class Bird extends Animal{
	void fly(){
		System.out.println("It can fly");
		}
	}
	
class Inheritance{
	public static void main(String args[]){ 
		Bird a=new Bird();
		a.fly();
		a.walk();
	}
}