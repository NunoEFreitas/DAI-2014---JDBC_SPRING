/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Rh;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import java.util.List;

/**
 *
 * @author Samuel Costa
 */
public interface RhDao {
    public List<Rh> listarPagamento();
    
    public void inserirPagamento(Rh pag);
}

