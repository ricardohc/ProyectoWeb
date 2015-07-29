package model;

public class EjemploLuis {

//	
//public void controlFotos(FileUploadEvent event) {
//		
//		Map<String,String> map = context.getExternalContext().getRequestParameterMap();
//		
//		String parametro = "descripcion["+event.getFile().getFileName()+"]"; 
//		String descripcion = (String) map.get(parametro);  
//		System.out.println(descripcion);
//		
//		uploadfoto = event.getFile();
//		System.out.println("Entro al subidor");
//		System.out.println("Nombre: " + uploadfoto.getFileName());
//		System.out.println("Tamaño imagen: " + uploadfoto.getSize());
//
//		ProductoFotoDTO foto = new ProductoFotoDTO();
//		foto.setProfotFot(uploadfoto.getContents());
//		foto.setProfotDes(descripcion);
//
//		List<ProductoFotoDTO> fotos;
//
//		if (!session.containsKey("a_subir")) {
//			fotos = new ArrayList<ProductoFotoDTO>();
//		} else {
//			fotos = (List<ProductoFotoDTO>) session.get("a_subir");
//		}
//
//		fotos.add(foto);
//		session.put("a_subir", fotos);
//
//	}
}
