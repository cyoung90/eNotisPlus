package moon.common.util;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Constants {
	private static final Log log = LogFactory.getLog(Constants.class);
	
	public static boolean isQa(){
		try {
			String hostName = getHostName();
			
			log.debug(hostName);
			
			if (hostName.equals("WIN-DCF574K5UGF")){
				return false;
			}
			else{
				return true;
			}
		} 
		catch (IOException e) {
			// 일단 상용에서 문제없게
			e.printStackTrace();
			return false;
		}
	}
	
	/**
	 * O : 운영 환경, Q : 테스트 환경, L : 로컬 환경
	 */
	public static String operationType() {
		try {
			String hostName = getHostName();
			String ipAddress = getIpAddress();

			log.debug("host name  : " + hostName);
			log.debug("ip address : " + ipAddress);

			if (ipAddress.equals("WIN-DCF574K5UGF")) {
				return "O";
			} else if (hostName.equals("ChoiChaYoung")) {
				return "Q";
			} else {
				return "L";
			}
		} catch (IOException e) {
			e.printStackTrace();
			return "O";
		}
	}

	private static String getHostName() throws UnknownHostException {
		return InetAddress.getLocalHost().getHostName();
	}

	private static String getIpAddress() throws UnknownHostException {
		return InetAddress.getLocalHost().getHostAddress();
	}
}
