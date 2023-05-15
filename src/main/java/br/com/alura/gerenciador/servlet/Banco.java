package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> listaEmpresa = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa1 = new Empresa();
		empresa1.setId(chaveSequencial++);
		Empresa empresa2 = new Empresa();
		empresa2.setId(chaveSequencial++);
		
		empresa1.setNome("JF");
		empresa2.setNome("JCR");
		
		listaEmpresa.add(empresa1);
		listaEmpresa.add(empresa2);
		
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.listaEmpresa.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.listaEmpresa;
	}

	public void removeEmpresa(Integer id) {
		
		Iterator<Empresa> it = listaEmpresa.iterator();
		
		while(it.hasNext()) {
			Empresa emp = it.next();
			if(emp.getId() == id) {
				it.remove();
				System.out.println("Empresa removida!");
			}
			
		}
		
//		for (Empresa empresa : listaEmpresa) {
//			if(empresa.getId() == id) {
//				listaEmpresa.remove(empresa);
//				System.out.println("Empresa removida!");
//			}
//		}
		
	}

	public Empresa buscaEmpresaPorId(Integer id) {
		for (Empresa empresa : listaEmpresa) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		return null;
	}

}
