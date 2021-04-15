package zenkit.web.controller;

import java.nio.file.Path;
import java.nio.file.Paths;

public class test {

	public static void main(String[] args) {
		String filename = "/z03_upload/output/19/user.png";
		
		Path p = Paths.get(filename);
		String nn = p.getFileName().toString();
		System.out.println(nn);
	}
}
