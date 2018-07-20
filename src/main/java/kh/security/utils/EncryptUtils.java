package kh.security.utils;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Base64;

public class EncryptUtils {
	
	 public static String getSha256(String plainText) {
	        try {
	            MessageDigest md = MessageDigest.getInstance("SHA-256");
	            byte[] bytes = plainText.getBytes(Charset.forName("UTF-8"));
	            md.update(bytes);
	            return new String(Base64.getEncoder().encode(md.digest()),"UTF8");
	        } catch (Exception e) {
	            System.out.println("Sha512 error.");
	            e.printStackTrace();
	            return null;
	        }
	    }
	 



}
