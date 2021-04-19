package zenkit.web.controller;

public class test {

	public static void main(String[] args) {
		
		int test = 0;
		for(int i=1; i<=100; i++) {
			test = i - (i - 1)%5;
			System.out.println(test);
		}
		
	}

}
