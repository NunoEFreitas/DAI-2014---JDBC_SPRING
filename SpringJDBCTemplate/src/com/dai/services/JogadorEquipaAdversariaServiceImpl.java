/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.JogadorEquipaAdversariaDao;
import com.dai.domain.JogadorEquipaAdversaria;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class JogadorEquipaAdversariaServiceImpl implements JogadorEquipaAdversariaService {
    
    @Autowired
    JogadorEquipaAdversariaDao jeadao;
    
    @Override
    public void adicionaJEA(JogadorEquipaAdversaria jea){
        jeadao.adicionaJEA(jea);
    }
    
    @Override
    public void apagaJEA(int idJEA){
        jeadao.apagaJEA(idJEA);
    }
    
    @Override
    public void alteraPosicaoJEA(int idJEA, String novaPosicao){
        jeadao.alteraPosicaoJEA(idJEA, novaPosicao);
    }
    
    @Override
    public void alteraClubeJEA(int idJEA, int novoidEA){
        jeadao.alteraClubeJEA(idJEA, novoidEA);
    }
    
    @Override
    public List<JogadorEquipaAdversaria> listaJEA(int idEA){
        return jeadao.listaJEA(idEA);
    }    
}
