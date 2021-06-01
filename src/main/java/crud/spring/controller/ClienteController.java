package crud.spring.controller;


import java.util.List;

import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	
	@RequestMapping("/formulario")
	public String formularioRegistro(Model modelo) {
		
		Cliente c = new Cliente();
		
		modelo.addAttribute("cliente", c);
		
		
		return "formularioRegistro";
	}
	
	@PostMapping(value = "/insertar")
	public String guardar(@ModelAttribute("cliente") Cliente cliente, Model modelo, BindingResult res)  {
		
		try {
			this.clienteDao.add(cliente);
			return "redirect:/listado";
		}catch(ConstraintViolationException e) {
			System.out.println("Error en los campos ingresados");
			return "redirect:/listado";
		}
	}
	
	@GetMapping(value = "/buscar")
	public String buscar(@RequestParam Long id, Model modelo) {
		Cliente cli = this.clienteDao.findById(id);
		modelo.addAttribute("cliente", cli);
		return "formularioRegistro";
	}
	
	public static String path(String buscado) {
		return RAIZ + buscado;
	}
	
}
