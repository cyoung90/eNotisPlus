package moon.sample.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import moon.common.common.CommandMap;
import moon.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="sampleService")
	private SampleService sampleService;

	@RequestMapping(value="/sample/index.do")
	public ModelAndView openSampleBoardList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/sample/index");

		List<Map<String, Object>> list = sampleService.selectSampleList(commandMap);
		System.out.println(list.toString());
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/sample/testMapArgumentResolver.do")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("");
	     
	    if(commandMap.isEmpty() == false){
	        Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
	        Entry<String,Object> entry = null;
	        while(iterator.hasNext()){
	            entry = iterator.next();
	            log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
	        }
	    }
	    return mv;
	}

	@RequestMapping(value="/sample/getMail.do")
	public ModelAndView getMail(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsonView");
		
		String zlogin_id = ServletRequestUtils.getStringParameter(request, "zlogin_id", "");
		
		System.err.println(zlogin_id);
		
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("NFUID", zlogin_id); 
		
//		Gson gsonObj = new Gson();
//		userInfoCnd = gsonObj.fromJson(jsonObjStr, UserInfoCnd.class);
		
		List<Map<String, Object>> list = sampleService.selectSampleList(commandMap);
		
		
		
		
		Map<String, Object> resMap = new HashMap<String, Object>();			
		resMap.put("status", "true");
		resMap.put("list", list);
		
		mv.addObject("result", resMap);
		
		//response.getOutputStream().write(gsonObj.toJson(resMap).getBytes("UTF-8"));	
		//
		//System.out.println(list.toString());
		//mv.addObject("list", list);
		
		return mv;
	}

}