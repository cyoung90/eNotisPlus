package moon.mail.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.main.service.MainService;

@Controller
public class MailReceiveController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="mainService")
	private MainService mainService;

	@RequestMapping(value="/mail/receiveList.do")
	public ModelAndView receiveList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/receiveList");

		Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap);	// 로그인 정보
		
		System.out.println(enotisUserInfo.toString());
		mv.addObject("userInfo", enotisUserInfo);

		return mv;
	}
	
	@RequestMapping(value="/mail/viewDetail.do")
	public ModelAndView viewDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/viewDetail");
		
		Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap);	// 로그인 정보
		
		System.out.println(enotisUserInfo.toString());
		mv.addObject("userInfo", enotisUserInfo);
		
		return mv;
	}
	
	@RequestMapping(value="/mail/writeMail.do")
	public ModelAndView writeMail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/writeMail");
		
		Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap);	// 로그인 정보
		
		System.out.println(enotisUserInfo.toString());
		mv.addObject("userInfo", enotisUserInfo);
		
		return mv;
	}
}