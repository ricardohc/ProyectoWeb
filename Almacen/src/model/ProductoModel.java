package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import entity.Producto;


public class ProductoModel {
	
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("almacenJPA");

	public void insertar(Producto p){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			manager.getTransaction().begin();
			manager.persist(p);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	
	public void eliminar(int idproducto){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			//manager.find --> es como select por ID
			Producto aux = manager.find(Producto.class, idproducto);
			manager.getTransaction().begin();
			manager.remove(aux);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	
	public Producto buscar(int idproducto) {
		
		EntityManager manager = null;
		Producto p = new Producto();
		try {
			manager = emf.createEntityManager();
			TypedQuery<Producto> query= manager.createQuery("select p from Producto p where p.idproducto = :idproducto",
					Producto.class);
			query.setParameter("idproducto", idproducto);
			p = query.getSingleResult();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			p=null;
		}finally{
			manager.close();
		}
		return p;
	}
	
	
	public void actualizar(Producto p){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			manager.getTransaction().begin();
			manager.merge(p);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	
	public List<Producto> listar(){
		EntityManager manager = emf.createEntityManager();
		TypedQuery<Producto> q = manager.createQuery("select p from Producto p ",	Producto.class);
														
		return q.getResultList();
	}

}
