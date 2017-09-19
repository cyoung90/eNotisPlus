package moon.main.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import moon.common.common.CommandMap;
import moon.main.dao.MainDAO;
import moon.main.service.MainService;

@Service("mainService")
public class MainServiceImpl implements MainService {

    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="mainDAO")
    private MainDAO mainDAO;
     
    @Override
    public Map<String, Object> selectEnotisUser(CommandMap map) throws Exception {
        return mainDAO.selectEnotisUser(map);
    }


}