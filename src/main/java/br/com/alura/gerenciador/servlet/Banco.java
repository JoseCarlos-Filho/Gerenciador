package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

public class Banco {

	private static List<Empresa> listaEmpresa = new ArrayList<>();
	
	static {
		Empresa empresa1 = new Empresa();
		Empresa empresa2 = new Empresa();
		
		empresa1.setNome("JF");
		empresa2.setNome("JCR");
		
		listaEmpresa.add(empresa1);
		listaEmpresa.add(empresa2);
		
	}
	
	public void adiciona(Empresa empresa) {
		Banco.listaEmpresa.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.listaEmpresa;
	}

}
