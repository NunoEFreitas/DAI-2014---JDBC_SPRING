/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.SelecaoJogoDao;
import com.dai.domain.SelecaoJogo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class SelecaoJogoServiceImpl implements SelecaoJogoService {
    
    @Autowired
	SelecaoJogoDao sldao;

	@Override
	public void adicionaSL(SelecaoJogo sl) {
		sldao.adicionaSL(sl);
	}
        
        @Override
        public void apagaSL(int idUtilizador, int idJogo){
            sldao.apagaSL(idUtilizador, idJogo);
        }
        
        @Override
        public List<SelecaoJogo> listaSL(int idJogo){
            return sldao.listaSL(idJogo);
        }
    
}
