package action;


import java.util.ArrayList;

import model.ProductoModel;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import entity.Producto;
import entity.ProductoDTO;

@SuppressWarnings("serial")
@ParentPackage(value="alamacenSTRUTS")
public class ProductoAction extends ActionSupport{
	
//	private Map<String, Object> session=ActionContext.getContext().getSession();
	private ProductoModel dao= new ProductoModel();
	private ArrayList<Producto> productos=new ArrayList<>();
	private int idproducto;
	private ProductoDTO producto= new ProductoDTO();
	
	@Action(value="/a_listar",results = {@Result(name = "success", type = "json")})
	public String listar(){	
		
		productos.clear();
		for (Producto x : dao.listar()) {
			productos.add(x);
		}
		return SUCCESS;
	}
	
	@Action(value="/a_borrar",results = {@Result(name = "success", type = "json")})
	public String borrar(){	
		
		dao.eliminar(idproducto);
		
		productos.clear();
		for (Producto x : dao.listar()) {
			productos.add(x);
		}
		return SUCCESS;
	}
	
	
	@Action(value = "/a_registrar", results = {@Result(location = "a_listar", name = "success", type="redirect")})
	public String registrar() {	
		
		
		System.out.println(producto.toString());
//		dao.insertar(producto);
		Producto aux= new Producto();
		aux.setNombre(producto.getNombre());
		aux.setCategoria(producto.getCategoria());
		aux.setPrecio(producto.getPrecio());

		dao.insertar(aux);
		
		return SUCCESS;
	}
	
	@Action(value="/a_buscar",results = {@Result(name = "success", type = "json")})
	public String buscar(){	
		
		Producto aux=dao.buscar(idproducto);
		
		producto.setIdproducto(aux.getIdproducto());
		producto.setNombre(aux.getNombre());
		producto.setCategoria(aux.getCategoria());
		producto.setPrecio(aux.getPrecio());
		
		return SUCCESS;
	}
	
	@Action(value="/a_actualizar",results = {@Result(name = "success", type = "json")})
	public String actualizar(){	
		
		Producto aux=new Producto();
		aux.setIdproducto(producto.getIdproducto());
		aux.setNombre(producto.getNombre());
		aux.setCategoria(producto.getCategoria());
		aux.setPrecio(producto.getPrecio());
		
		dao.actualizar(aux);
		
		return SUCCESS;
	}
	

	
	public ArrayList<Producto> getProductos() {
		return productos;
	}

	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}

	public int getIdproducto() {
		return idproducto;
	}

	public void setIdproducto(int idproducto) {
		this.idproducto = idproducto;
	}

	public ProductoDTO getProducto() {
		return producto;
	}

	public void setProducto(ProductoDTO producto) {
		this.producto = producto;
	}

}
