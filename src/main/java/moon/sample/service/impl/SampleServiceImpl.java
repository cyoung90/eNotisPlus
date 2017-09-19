package moon.sample.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import moon.sample.dao.SampleDAO;
import moon.sample.service.SampleService;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {

    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="sampleDAO")
    private SampleDAO sampleDAO;
     
    @Override
    public List<Map<String, Object>> selectSampleList(Map<String, Object> map) throws Exception {
        return sampleDAO.selectSampleList(map);
    }


}