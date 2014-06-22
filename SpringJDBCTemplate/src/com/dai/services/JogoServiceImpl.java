/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.JogoDao;
import com.dai.domain.Jogo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class JogoServiceImpl implements JogoService {
    
        @Autowired
	JogoDao jogodao;

	@Override
	public void novoJogo(Jogo jogo) {
		jogodao.novoJogo(jogo);
	}
        
        @Override
	public List<Jogo> listaJogosPendentes() {
		return jogodao.listaJogosPendentes();
	}
        
        @Override
        public void alteraJogo(Jogo jogo){
            jogodao.alteraJogo(jogo);
        }
        
        @Override
        public List<Jogo> listaJogosPendentesEscalao(Integer idEscalao){
            return jogodao.listaJogosPendentesEscalao(idEscalao);
        }
        
        @Override
        public void apagaJogo(Integer idJogo){
            jogodao.apagaJogo(idJogo);
        }
        
        @Override
        public List<Jogo> listaJogosPassados(Integer idEscalao){
            return jogodao.listaJogosPassados(idEscalao);
        }
        
        @Override
        public List<Jogo> listaJogosSelecionado(Integer idUtilizador){
            return jogodao.listaJogosSelecionado(idUtilizador);
        }
        
        @Override
        public List<Jogo> getJogo(Integer idJogo){
            return jogodao.getJogo(idJogo);
        }
        
          @Override
        public List<Jogo> listaHistoricoAtleta(Integer idUtilizador){
          return jogodao.listaHistoricoAtleta(idUtilizador);
          
          }

}
