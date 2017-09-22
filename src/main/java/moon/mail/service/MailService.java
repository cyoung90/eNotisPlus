package moon.mail.service;

import java.util.List;
import java.util.Map;

public interface MailService {

	List<Map<String, Object>> getReceiveList(Map<String, Object> map) throws Exception;
}
