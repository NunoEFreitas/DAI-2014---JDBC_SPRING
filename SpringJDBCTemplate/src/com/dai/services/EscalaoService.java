/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface EscalaoService {
    
        public void inserirEscalao(Escalao escalao);

	public List<Escalao> listarEscalao();

	public void apagarEscalao(Integer id);
    
}
