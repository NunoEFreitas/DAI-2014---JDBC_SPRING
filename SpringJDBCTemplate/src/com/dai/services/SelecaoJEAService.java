/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.SelecaoJEA;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface SelecaoJEAService {
    
    public void adicionaSJEA(SelecaoJEA sjea);
    
    public void apagaSJEA(int idJEA, int idJogo);
    
    public List<SelecaoJEA> listaSJEA(int idJogo);
    
}
