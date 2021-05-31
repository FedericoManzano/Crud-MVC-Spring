package crud.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class ControllerTest {
	
	@RequestMapping
	public String index() {
		return "index";
	}
	
}
