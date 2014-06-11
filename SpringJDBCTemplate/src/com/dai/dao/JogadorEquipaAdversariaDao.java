/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.JogadorEquipaAdversaria;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface JogadorEquipaAdversariaDao {
    
    public void adicionaJEA(JogadorEquipaAdversaria jea);
    
    public void apagaJEA(int idJEA);
    
    public void alteraPosicaoJEA(int idJEA, String novaPosicao);
    
    public void alteraClubeJEA(int idJEA, int novoidEA);
            
    public List<JogadorEquipaAdversaria> listaJEAporEquipa(int idEA);     
    
    public List<JogadorEquipaAdversaria> listaJEA();
    
}
