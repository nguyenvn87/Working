package com.kito.madina;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kito.madina.test.dao.PersonDAO;
import com.kito.madina.test.service.PersonService;
import com.kito.madina.test.vo.PersonVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//@Autowired
	@Resource(name = "personService")
	private PersonService personService;
	private PersonDAO pDao;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		List<PersonVO> list = personService.selectAllPerson();
		for(PersonVO vo : list) {
			System.out.println(vo.getId() + " / "+ vo.getName());
		}
		//System.out.println(list.size());
		
		return "index";
	}
	@RequestMapping("/login.do")
	public String login(Locale locale, Model model, HttpServletRequest req) {
		
		System.out.println("Name = "+req.getParameter("userName")+ " Pass: "+ req.getParameter("pass"));
		List<PersonVO> list = personService.selectAllPerson();
		for(PersonVO vo : list) {
			System.out.println(vo.getId() + " / "+ vo.getName());
		}
		System.out.println("Test login");
		
		return "home";
	}
	@RequestMapping("/application.do")
	public String applycation(Locale locale, Model model) {
		
		List<PersonVO> list = personService.selectAllPerson();
		for(PersonVO vo : list) {
			System.out.println(vo.getId() + " / "+ vo.getName());
		}
		System.out.println("Nguyen Soai" + "home" );
		
		return "application";
	}
	@RequestMapping("/home.do")
	public String home(Locale locale, Model model, HttpServletRequest req) {
		
		List<PersonVO> list = personService.selectAllPerson();
		for(PersonVO vo : list) {
			System.out.println(vo.getId() + " / "+ vo.getName());
		}
		System.out.println("This is home");
		
		return "home";
	}
}
