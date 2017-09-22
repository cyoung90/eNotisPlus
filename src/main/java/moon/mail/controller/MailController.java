package moon.mail.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.mail.service.MailService;

@Controller
public class MailController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="mailService")
	private MailService mailService;

	@RequestMapping(value="/mail/receiveList.do")
	public ModelAndView receiveList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/receiveList");

		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);

		return mv;
	}
	
	@RequestMapping(value="/mail/viewDetail.do")
	public ModelAndView viewDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/receiveList");
		
		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);
		
		return mv;
	}
	
	@RequestMapping(value="/mail/writeMail.do")
	public ModelAndView writeMail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/receiveList");
		
		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);
		
		return mv;
	}
}