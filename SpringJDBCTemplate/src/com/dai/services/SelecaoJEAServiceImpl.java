/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.SelecaoJEADao;
import com.dai.domain.SelecaoJEA;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class SelecaoJEAServiceImpl implements SelecaoJEAService {
    
    @Autowired
	SelecaoJEADao sjeadao;
    
    @Override
    public void adicionaSJEA(SelecaoJEA sjea){
        sjeadao.adicionaSJEA(sjea);
    }
    
    @Override
    public void apagaSJEA(int idJEA, int idJogo){
        sjeadao.apagaSJEA(idJEA, idJogo);
    }
    
    @Override
    public List<SelecaoJEA> listaSJEA(int idJogo){
        return sjeadao.listaSJEA(idJogo);
    }
    
}
