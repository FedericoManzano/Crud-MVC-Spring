package crud.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import crud.spring.entity.Cliente;
import crud.spring.repository.ClienteDao;

@Controller
@RequestMapping(value = "/")
public class ClienteController {

	
	public static final String RAIZ = "http://localhost:8080/crud-spring/";
	
	@Autowired
	private ClienteDao clienteDao;
	
	
	@RequestMapping
	public String bienvenida (Model modelo) {
		return "index";
	}
	
	
	
	@RequestMapping("/listado")
	public String listado (Model modelo) {
		List<Cliente> lista = this.clienteDao.all();
		
		modelo.addAttribute("clientes", lista);
		
		return "listClient";
	}
	
	
	public static String path(String buscado) {
		return RAIZ + buscado;
	}
	
}
