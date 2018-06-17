import java.util.ArrayList;
import java.util.List;

public class ListSet {
	static List<String> list=new ArrayList<String>();;
	public static void set(String name) {
		list.add(name);
	}
	public static String getList() {
		return list.get(0);
		}

}
