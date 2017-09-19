package moon.main.service;

import java.util.Map;

import moon.common.common.CommandMap;

public interface MainService {

	Map<String, Object> selectEnotisUser(CommandMap map) throws Exception;
}
