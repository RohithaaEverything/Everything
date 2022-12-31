package java;
import java.util.Map;
import java.util.TreeMap;
public class count{
	static void count(String str) {
			Map<String,Integer> mp=new TreeMap<String, Integer>();
			String arr[]=str.split(" ");
			for(int i=0;i<arr.length;i++){
				if(mp.containsKey(arr[i])){
					mp.put(arr[i], mp.get(arr[i])+1);
				}
				else {
					mp.put(arr[i],1);
				}
			}
			for(Map.Entry<String,Integer> entry:
				mp.entrySet()) {
				System.out.println(entry.getKey()+" - "+entry.getValue());
			}
	}
	public static void main(String[] args) {
		String str = "Bhavya is a bad girl and Bhavya is a dirty girl";
		count(str);
	}
}