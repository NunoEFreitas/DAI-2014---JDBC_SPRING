/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.TreinoDao;
import com.dai.domain.Treino;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class TreinoServiceImpl implements TreinoService{
    
       @Autowired
	TreinoDao treinodao;

	@Override
	public void novoTreino(Treino treino) {
		treinodao.inserirTreino(treino);
	}
        
        @Override
	public List<Treino> listaTreinos() {
		return treinodao.listarTreinos();
	}
        
        @Override
        public void apagaTreino(int idTreino){
            treinodao.apagarTreino(idTreino);
            
        }
        
        @Override
        public void updateTreino(Treino treino){
            treinodao.updateTreino(treino);
        }
        
        @Override
	public List<Treino> listaTreinosEscalao(int idEscalao) {
		return treinodao.listarTreinosEscalao(idEscalao);
	}
        
        @Override
        public Treino getTreino(Integer idTreino){
            return treinodao.getTreino(idTreino);
        }
        
        @Override
        public List<Treino> listarTreinosPorUT(Integer idUtilizador){
            return treinodao.listarTreinosPorUT(idUtilizador);
        }
    
}
