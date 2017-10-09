package moon.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.common.util.LocalSha512Encode;
import moon.main.service.MainService;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "mainService")
	private MainService mainService;

	/**
	 * eNotis+ 로그인 절차
	 * @param request HttpServletRequest
	 * @author [eNostis+] - 2017.09.22 ccy
	 */
	@RequestMapping("/main/loginProcess.do")
	public @ResponseBody ModelAndView goLoginProcess(@RequestParam(required = true) String id, @RequestParam(required = true) String pw,
			HttpSession session, HttpServletResponse response) throws Exception {
		
		if ( session.getAttribute("login") != null ){
            session.removeAttribute("login");
        }
		
		Map<String, Object> result = new HashMap<>();
		
		try {
			response.setContentType("text/plain;charset=utf-8");
			
			System.out.println("id >>>>>> " + id);
			System.out.println("zpasswd > " + pw);
			String encPw = LocalSha512Encode.encode("enotis", pw);
			System.out.println("encPw >>> " + encPw);
			
			ModelMap map = new ModelMap();
			map.put("id", id);
			
			Map<String, Object> userInfo =  mainService.selectEnotisUser(map);
			
			if (userInfo == null) {
				result.put("resultCd", "400");
				result.put("msg", "아이디가 존재하지 않습니다.");
			
			}else if( encPw.equals(userInfo.get("USER_PASSWD")) ) {
				result.put("userInfo", userInfo);
				result.put("resultCd", "200");
				result.put("msg", "로그인 성공");
				
				session.setAttribute("login", userInfo);
//				if ( dto.isUseCookie() ){ // dto 클래스 안에 useCookie 항목에 폼에서 넘어온 쿠키사용 여부(true/false)가 들어있을 것임
//	                // 쿠키 사용한다는게 체크되어 있으면...
//	                // 쿠키를 생성하고 현재 로그인되어 있을 때 생성되었던 세션의 id를 쿠키에 저장한다.
//	                Cookie cookie = new Cookie("loginCookie", session.getId());
//	                // 쿠키를 찾을 경로를 컨텍스트 경로로 변경해 주고...
//	                cookie.setPath("/");
//	                cookie.setMaxAge(60*60*24*7); // 단위는 (초)임으로 7일정도로 유효시간을 설정해 준다.
//	                // 쿠키를 적용해 준다.
//	                response.addCookie(cookie);
//	            }

			}else {
				result.put("resultCd", "400");
				result.put("msg", "패스워드가 틀렸습니다.");
			}
		} catch(NullPointerException e) {
			result.put("resultCd", "400");
			result.put("msg", "패스워드가 틀렸습니다.");
		} catch(Exception e) {
			result.put("resultCd", "500");
			result.put("msg", "알 수 없는 오류 발생");
		} 
		
		ModelAndView resultView = new ModelAndView();
		resultView.setViewName("jsonView");
		resultView.addAllObjects(result);
		
		return resultView;
	}
	
	/**
	 * eNotis+ 홈 화면
	 * @param request HttpServletRequest
	 * @author [eNostis+] - 2017.09.22 ccy
	 */
	@RequestMapping(value = "/main/home.do")
	public ModelAndView eNotisLogin2(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception {
		mv.setViewName("/main/home");
		
		//Map<String, Object> enotisUserInfo = mainService.selectEnotisUser(commandMap.getMap()); // 로그인 정보
		
		return mv;
	}

}