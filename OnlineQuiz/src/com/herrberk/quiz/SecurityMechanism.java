package com.herrberk.quiz;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.tomcat.util.codec.binary.Base64;

public class SecurityMechanism {

	public String getEncrypted(String text) {
		Crypto c = new Crypto();
		return c.encrypt(text);
	}

	public String getDecrypted(String text) {
		Crypto c = new Crypto();
		return c.decrypt(text);
	}
	
	private class Crypto {
		private byte[] key = { 0x74, 0x68, 0x69, 0x73, 0x49, 0x73, 0x41, 0x53, 0x65, 0x63, 0x72, 0x65, 0x74,
				0x4b, 0x65, 0x79 };// "thisIsASecretKey";

		private String encrypt(String strToEncrypt) {
			try {
				Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
				final SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
				cipher.init(Cipher.ENCRYPT_MODE, secretKey);
				final String encryptedString = Base64.encodeBase64String(cipher.doFinal(strToEncrypt.getBytes()));
				return encryptedString;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;

		}

		private  String decrypt(String strToDecrypt) {
			try {
				Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
				final SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
				cipher.init(Cipher.DECRYPT_MODE, secretKey);
				final String decryptedString = new String(cipher.doFinal(Base64.decodeBase64(strToDecrypt)));
				return decryptedString;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
	}
}
