package moon.mail.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import moon.common.dao.AbstractDAO;

@Repository("mailDAO")
public class MailDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getReceiveList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("mail.getReceiveList", map);
	}

}