import java.util.*;
public class Hello{
    public static void main(String[] args){
        while (true){
        System.out.println("click- 1 to know balance");
        System.out.println("click- 2 to know your validity date");
        System.out.println("click- 3 to know number of free call");
        System.out.println("click- 4 for more options");
        Scanner a=new Scanner(System.in);
            int b=a.nextInt();
            switch (b){
                case 1:
                    System.out.println("know my balance");
                    break;
                case 2:
                    System.out.println("know my validity bate");
                    break;
                case 3:
                    System.out.println("know number of free calls available");
                    break;
                case 5:
                    System.exit(0);
                case 4:
                    while (true) {
                    System.out.println("click- 1 for prepaid bill requiest");
                    System.out.println("click- 2 for customer preferences");
                    System.out.println("click- 3 for GRPS activation");
                    System.out.println("click- 4 for special message offers");
                    System.out.println("click- 5 for 3G activation");
                    System.out.println("click- 6 to go previous menu");
                    int c=a.nextInt();

                    switch (c) {

                            case 1:
                                System.out.println("paid bill requiest");
                                break;
                            case 2:
                                System.out.println("customer prefarence");
                                break;
                            case 3:
                                System.out.println("GPRS activation");
                                break;
                            case 4:
                                System.out.println("special message offers");
                                break;
                            case 5:
                                System.out.println("3G activation");
                                break;
                            case 6:
                                System.out.println("going to previous menu");
                                break;
                            default:
                                System.out.println("invalid click");
                                break;
                        }
                        if (c==6)
                            break;
                    }
                default:
                    System.out.println("invalid click");
                    break;
            }
            continue;
        }
    }
}