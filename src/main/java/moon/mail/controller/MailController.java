package moon.mail.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.mail.service.MailService;

@Controller
public class MailController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="mailService")
	private MailService mailService;

	/**
	 * 메일쓰기 : Form 이동
	 * @param  commandMap
	 * @return ModelAndView
	 */
	@RequestMapping(value="/mail/writeMail.do")
	public ModelAndView writeMail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/writeMail");
		
		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);
		
		return mv;
	}
	
	/**
	 * 메일쓰기 : 메일 발송
	 * @param request HttpServletRequest
	 * @author [eNostis+] - 2017.10.06 ccy
	 */
	@RequestMapping("/mail/sendMail.do")
	public @ResponseBody ModelAndView sendMail(
				@RequestParam(required = true) String toAddr,
				@RequestParam(required = true) String subject,
				@RequestParam(required = true) String content,
				@RequestParam String ccAddr,
				HttpServletResponse response) throws Exception {
		
		Map<String, Object> result = new HashMap<>();
		
		try {
			response.setContentType("text/plain;charset=utf-8");
			
			System.out.println("toAddr  > " + toAddr);
			System.out.println("subject > " + subject);
			System.out.println("ccAddr  > " + ccAddr);
			System.out.println("content > " + content);
			
			ModelMap map = new ModelMap();
			//map.put("id", id);
			
			//Map<String, Object> userInfo =  mainService.selectEnotisUser(map);
			
			result.put("resultCd", "200");
			result.put("msg", "이메일 발송이 되었습니다.");
			
		} catch(Exception e) {
			result.put("resultCd", "500");
			result.put("msg", "알 수 없는 오류 발생");
		} 
		
		ModelAndView resultView = new ModelAndView();
		resultView.setViewName("jsonView");
		resultView.addAllObjects(result);
		
		return resultView;
	}
	
	@RequestMapping(value="/mail/receiveList.do")
	public ModelAndView receiveList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/receiveList");

		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);

		return mv;
	}
	
	@RequestMapping(value="/mail/viewDetail.do")
	public ModelAndView viewDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/mail/viewDetail");
		
		//List<Map<String, Object>> mailList = mailService.getReceiveList(commandMap.getMap());
		
		//mv.addObject("mailList", mailList);
		
		return mv;
	}
}