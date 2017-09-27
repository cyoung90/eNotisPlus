package moon.common.util;

import java.security.MessageDigest;

/**
 * 
 * <pre>
 * com.daekyo.cm.crm.cmCrmContentsWorkMgr.web
 * CmCrmContentsWorkMgrController.java
 * </pre>
 *
 * @date 2014. 7. 25.
 * @author fox
 *
 */
public class LocalSha256Encode {

	/**
	 * 입력 문자열을 암호화 해서 리턴한다 실패시 공백문자
	 * @param plainText
	 * @return hashString 
	 */
	public static String encode(String plainText){
		String encodeString;
		try{
			return kisaSha256(plainText).toUpperCase();
			//return sha256(plainText).toUpperCase();
		}
		catch(Exception e){
			e.printStackTrace();
			return "";
		}
	}
	
	
	private static String encodeApacheCodec(String plainText){
		return org.apache.commons.codec.digest.DigestUtils.shaHex(plainText);
	}
	
	private static String sha256(String plainText){
	   try{
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	        //byte[] hash = digest.digest(plainText.getBytes("UTF-8"));
	        byte[] hash = digest.digest(plainText.getBytes());
	        
	        return getbyteToHexString(hash);
	    }
	   	catch(Exception ex){
	   		throw new RuntimeException(ex);
	    }		
	}
	
	
	private static String kisaSha256(String plainText) throws Exception{
		KISA_SHA256 kisaSha256 = new KISA_SHA256();
		byte[] pszMessage = plainText.getBytes();
		byte[] pszDigest = kisaSha256.Sha256EncryptB(pszMessage);
			
		return getbyteToHexString(pszDigest);		
	}
	
	private static String getbyteToHexString(byte[] hash){
        StringBuffer hexString = new StringBuffer();
   	 
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            
            if(hex.length() == 1) {
            	hexString.append('0');
            }
            
            hexString.append(hex);
        }
 
        return hexString.toString();		
	}	
}
