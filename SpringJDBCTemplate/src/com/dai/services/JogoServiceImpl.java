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
	public List<Jogo> listaJogos() {
		return jogodao.listaJogos();
	}

}
