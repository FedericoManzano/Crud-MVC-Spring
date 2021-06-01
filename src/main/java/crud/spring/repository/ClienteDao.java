package crud.spring.repository;

import java.util.List;

import crud.spring.entity.Cliente;

public interface ClienteDao {
	public List<Cliente> all ();
	public Cliente add(Cliente cliente);
	public Cliente findById(Long id);
}
