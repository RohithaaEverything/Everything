import java.util.*;
public class tokens2{
    public static void main(String[] args) {
        Scanner a=new Scanner(System.in);
        String b=a.nextLine();
        StringTokenizer c=new StringTokenizer(b,",:! @#%^&*$" );
        while(c.hasMoreTokens()){
            System.out.println(c.nextToken());
        }
    }}



import java.util.Scanner;
import java.util.StringTokenizer;
public class token2_2{
    public static void main(String[] args) {
        Scanner a=new Scanner(System.in);
        String b=a.nextLine();
        Scanner sc=new Scanner(System.in);
        String j=sc.nextLine();
        String i=sc.nextLine();
        StringTokenizer st=new StringTokenizer(j,i);
        while(st.hasMoreTokens()){
            System.out.println(st.nextToken());
        }
    }}