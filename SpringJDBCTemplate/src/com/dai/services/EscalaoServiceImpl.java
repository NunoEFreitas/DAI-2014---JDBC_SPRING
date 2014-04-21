/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.EscalaoDao;
import com.dai.dao.PerfilDao;
import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class EscalaoServiceImpl implements EscalaoService {
    
        @Autowired
	EscalaoDao escalaodao;

	@Override
	public void inserirEscalao(Escalao escalao) {
                escalaodao.inserirEscalao(escalao);
	}

	@Override
	public List<Escalao> listarEscalao() {
		return escalaodao.listarEscalao();
	}

	@Override
	public void apagarEscalao(Integer id) {
		escalaodao.apagarEscalao(id);
		
	}
    
}
