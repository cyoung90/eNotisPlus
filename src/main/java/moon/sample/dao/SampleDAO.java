package moon.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import moon.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSampleList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("sample.selectSampleList", map);
	}

}