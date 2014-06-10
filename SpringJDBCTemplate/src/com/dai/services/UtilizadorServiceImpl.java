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
	public List<Utilizador> listarUtilizadorPorEscalao(int idEscalao) {
		return utilizadordao.listarUtilizadorPorEscalao(idEscalao);
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
        
        @Override
        public void activaUtilizador(Integer id){
             utilizadordao.activaUtilizador(id);
        }
        
        @Override
        public void desactivaUtilizador(Integer id){
             utilizadordao.desactivaUtilizador(id);
        }

	
}
