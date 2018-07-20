package kh.security.utils;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Base64;


public class EncryptUtils {

	private static String getSha512(String plainText) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte[] bytes = plainText.getBytes(Charset.forName("UTF-8"));
			md.update(bytes);
			return new String(Base64.getEncoder().encode(md.digest()), "UTF8");

		} catch (Exception e) {
			System.out.println("Sha512 error.");
			e.printStackTrace();
			return null;
		}
	}

	public String getSha512global(String plainText) {
		return EncryptUtils.getSha512(plainText);
	}
	
	
	public static void main(String[] args) {

		System.out.println(EncryptUtils.getSha512("abc"));
		System.out.println(EncryptUtils.getSha512("sjisyours"));
		System.out.println(EncryptUtils.getSha512("sjisyours"));

	}

}
