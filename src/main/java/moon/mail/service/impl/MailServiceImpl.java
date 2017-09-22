package moon.mail.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import moon.mail.dao.MailDAO;
import moon.mail.service.MailService;

@Service("mailService")
public class MailServiceImpl implements MailService {

    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="mailDAO")
    private MailDAO mailDAO;
     
    @Override
    public List<Map<String, Object>> getReceiveList(Map<String, Object> map) throws Exception {
        return mailDAO.getReceiveList(map);
    }


}