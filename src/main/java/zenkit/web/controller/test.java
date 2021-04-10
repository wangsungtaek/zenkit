package zenkit.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

public class test {

	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat sDate = new SimpleDateFormat("YYMMdd-hhmmss");
		
		System.out.println(date);
		System.out.println(sDate.format(date));
	}
}
