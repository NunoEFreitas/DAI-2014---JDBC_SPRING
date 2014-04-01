/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.TipoUtilizador;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface TipoUtilizadorDao {
    
    public void insertData(TipoUtilizador ut);
  

	public List<TipoUtilizador> getTipoUtilizadorList();
        
    
}
