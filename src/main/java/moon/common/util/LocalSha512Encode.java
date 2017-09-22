package moon.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
public class LocalSha512Encode {

	/**
	 * 입력 문자열을 암호화 해서 리턴한다 실패시 공백문자
	 * @param plainText
	 * @return hashString 
	 */
	public static final String encode( String service, String original ) {
        String output = "";
        StringBuffer sb = new StringBuffer();
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("SHA-512");
            
            if(service.equals("enotis")) {
            	// inotis는 WF20_ORG
            	service = "WF20_ORG";
            } else {
            	service = "";
            }
            md.update(service.getBytes());
            md.update(original.getBytes());
            byte[] msgb = md.digest();

            for (int i = 0; i < msgb.length; i++) {

                byte temp = msgb[i];
                String str = Integer.toHexString(temp & 0xFF);
                while (str.length() < 2) {
                    str = "0" + str;
                }

                str = str.substring(str.length() - 2);
                sb.append(str);
            }

            output = sb.toString();
            
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "";
        }

        return output;
    }
}
