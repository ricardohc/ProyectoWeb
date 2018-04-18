package action;

import entity.Producto;
import model.ProductoModel;

public class Pruebas {
	
	public static void main(String[] args) {
		//ESTO ES UNA INSTACIA DEL MODEL
		ProductoModel dao=new ProductoModel();
		
//		Producto d= new Producto();
//		d.setNombre("ZzzZ");
//		d.setCategoria("ZzzZZ");
//		d.setPrecio(8222.023);
//		
//		dao.insertar(d);
		
		System.out.println(dao.buscar(1).toString());
	}

}
