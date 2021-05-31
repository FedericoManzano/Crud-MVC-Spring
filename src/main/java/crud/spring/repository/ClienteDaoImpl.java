package crud.spring.repository;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import crud.spring.entity.Cliente;

import org.hibernate.*;


@Repository
public class ClienteDaoImpl implements ClienteDao {

	
	@Autowired
	private SessionFactory factory;
	
	
	@Override
	@Transactional
	public List<Cliente> all() {
		Session ses = this.factory.getCurrentSession();
		List<Cliente> listado = (List<Cliente>) ses.createQuery("FROM Cliente", Cliente.class).getResultList();
		return listado;
	}
}
