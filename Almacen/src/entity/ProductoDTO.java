package entity;


public class ProductoDTO {

	
	private int idproducto;
	private String nombre;
	private String categoria;
	private double precio;
	
	public ProductoDTO() {
	}

	public int getIdproducto() {
		return idproducto;
	}
	public void setIdproducto(int idproducto) {
		this.idproducto = idproducto;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}

	@Override
	public String toString() {
		return "Producto [idproducto=" + idproducto + ", nombre=" + nombre
				+ ", categoria=" + categoria + ", precio=" + precio + "]";
	}
}
