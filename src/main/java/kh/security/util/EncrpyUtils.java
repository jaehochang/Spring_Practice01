package kh.security.util;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Base64;

public class EncrpyUtils {
	 public static String getSha256(String plainText) {
	        try {
	            MessageDigest md = MessageDigest.getInstance("SHA-256");
	            byte[] bytes = plainText.getBytes(Charset.forName("UTF-8"));
	            md.update(bytes);
	            return new String (Base64.getEncoder().encode(md.digest()),"UTF-8");
	        } catch (Exception e) {
	            System.out.println("Sha256 error.");
	            e.printStackTrace();
	            return null;
	        }
	    }
	 
//	 public static void main(String[] args) {
//		System.out.println(EncrpyUtils.getSha512("abc"));
//	}
}
