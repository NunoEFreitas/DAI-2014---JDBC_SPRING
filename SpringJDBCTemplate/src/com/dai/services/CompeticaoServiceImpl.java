/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.CompeticaoDao;
import com.dai.domain.Competicao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class CompeticaoServiceImpl implements CompeticaoService{
    
    @Autowired
	CompeticaoDao competicaodao;

	@Override
    public void adicionaCompeticao(Competicao competicao){
        competicaodao.adicionaCompeticao(competicao);
        
    }
    
    @Override
    public void apagaCompeticao(int idCompeticao){
        competicaodao.apagaCompeticao(idCompeticao);
    }
    
    @Override
    public List<Competicao> listaCompeticao(){
        return competicaodao.listaCompeticao();
    }
    
}
