/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Estatistica;

/**
 *
 * @author Nuno
 */
public interface EstatisticaService {
    
    public void adicionaEstatistica(Estatistica est);
    
    public void removeEstatistica(Integer idEst);
    
}
