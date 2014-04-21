package com.dai.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.dai.dao.UtilizadorDao;
import com.dai.domain.Utilizador;


public class UtilizadorServiceImpl implements UtilizadorService {

	@Autowired
	UtilizadorDao utilizadordao;

	@Override
	public void inserirUtilizador(Utilizador ut) {
		utilizadordao.inserirUtilizador(ut);
	}

	@Override
	public List<Utilizador> listarUtilizador() {
		return utilizadordao.listarUtilizador();
	}

	@Override
	public void apagarUtilizador(Integer id) {
		utilizadordao.apagarUtilizador(id);
		
	}

	@Override
	public Utilizador getUtilizador(Integer id) {
		return utilizadordao.getUtilizador(id);
	}

	@Override
	public void updateUtilizador(Utilizador ut) {
		utilizadordao.updateUtilizador(ut);
		
	}
        
        @Override
        public boolean verificaUtilizador(Integer id){
            return utilizadordao.verificaUtilizador(id);
        }

	
}
