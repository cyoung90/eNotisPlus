package moon.cafeteria.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.main.service.MainService;

@Controller
public class CafeteriaMenuController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="mainService")
	private MainService mainService;

	@RequestMapping(value="/cafeteria/receiveMenu.do")
	public ModelAndView receiveMenu(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/cafeteria/receiveMenu");

		//Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap.getMap());	// 로그인 정보
		
		//System.out.println(enotisUserInfo.toString());
		mv.addObject("userInfo", "");

		return mv;
	}
}