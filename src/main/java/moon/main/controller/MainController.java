package moon.main.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.main.service.MainService;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="mainService")
	private MainService mainService;

	@RequestMapping(value="/main/login.do")
	public ModelAndView eNotisLogin(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main/main");

		Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap);	// 로그인 정보
		
		System.out.println(enotisUserInfo.toString());
		mv.addObject("userInfo", enotisUserInfo);

		return mv;
	}
}