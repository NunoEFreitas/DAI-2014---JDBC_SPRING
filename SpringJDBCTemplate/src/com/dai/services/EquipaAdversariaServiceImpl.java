/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.EquipaAdversariaDao;
import com.dai.domain.EquipaAdversaria;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class EquipaAdversariaServiceImpl implements EquipaAdversariaService{
    
     @Autowired
    EquipaAdversariaDao eadao;
    
     @Override
    public void adicionaEA(EquipaAdversaria ea){
        eadao.adicionaEA(ea);
    }
    
    @Override
    public void apagaEA(int idEA){
        eadao.apagaEA(idEA);
    }
    
    @Override
    public List<EquipaAdversaria> listaEA(){
        return eadao.listaEA();
    }
    
    @Override
    public List<EquipaAdversaria> listaEAporEscalao(int idEscalao){
        return eadao.listaEAporEscalao(idEscalao);
    }
}
