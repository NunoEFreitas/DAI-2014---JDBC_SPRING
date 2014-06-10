/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.SelecaoTreinoDao;
import com.dai.domain.SelecaoTreino;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class SelecaoTreinoServiceImpl implements SelecaoTreinoService{
    
    @Autowired
	SelecaoTreinoDao stdao;
    
    @Override
    public void adicionaST(SelecaoTreino st){
        stdao.adicionaST(st);
    }
    
    @Override
    public void apagaST(int idUtilizador, int idTreino){
        stdao.apagaST(idUtilizador, idTreino);
    }
    
    @Override
    public List<SelecaoTreino> listaST(int idTreino){
        return stdao.listaST(idTreino);
    }
    
    @Override
    public List<SelecaoTreino> listaSTparaPresencas(int idTreino){
        return stdao.listaSTparaPresencas(idTreino);
    }
    
    @Override
    public void jogadorFaltou(int idTreino, int idUtilizador){
        stdao.jogadorFaltou(idTreino, idUtilizador);
    }
    
    @Override
    public void jogadorPresente(int idTreino, int idUtilizador){
        stdao.jogadorPresente(idTreino, idUtilizador);
    }
    
}
