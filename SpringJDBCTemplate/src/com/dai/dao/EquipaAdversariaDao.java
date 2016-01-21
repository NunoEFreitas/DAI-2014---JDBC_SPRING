/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.EquipaAdversaria;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface EquipaAdversariaDao {
    
    public void adicionaEA(EquipaAdversaria ea);
    
    public void apagaEA(int idEA);
    
    public List<EquipaAdversaria> listaEA();
    
    public List<EquipaAdversaria> listaEAporEscalao(int idEscalao);
    
}
