import java.util.*;
public class rectangle {
    private
    int length;
    int breadth;
    public void x(){
        Scanner b=new Scanner(System.in);
        length=b.nextInt();
        breadth=b.nextInt();        
    }
    public
    void y(){
        System.out.println("length:"+length);
        System.out.println("breadth:"+breadth);
        System.out.println("area of Rectangle:"+length*breadth);
        System.out.println("perimeter of rectangle:"+2*(length+breadth));
    }
}



public class rectangleinput{
    public static void main(String[] args) {
        rectangle a=new rectangle();
        a.x();
        a.y();
    }
}