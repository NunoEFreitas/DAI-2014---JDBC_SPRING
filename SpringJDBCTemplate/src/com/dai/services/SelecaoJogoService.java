/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.SelecaoJogo;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface SelecaoJogoService {
    
    public void adicionaSL(SelecaoJogo sl);
    
    public void apagaSL(int idUtilizador, int idJogo);
    
    public List<SelecaoJogo> listaSL(int idJogo);
    
}
