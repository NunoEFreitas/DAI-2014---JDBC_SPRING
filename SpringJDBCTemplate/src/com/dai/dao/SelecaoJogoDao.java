/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.SelecaoJogo;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface SelecaoJogoDao {
    
    public void adicionaSL(SelecaoJogo sl);
    
    public void apagaSL(int idUtilizador, int idJogo);
    
    public List<SelecaoJogo> listaSL(int idJogo);
    
    
    
}
