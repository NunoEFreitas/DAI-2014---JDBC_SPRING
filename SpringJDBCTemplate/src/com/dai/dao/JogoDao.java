/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Jogo;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface JogoDao {
    
    public void novoJogo(Jogo jogo);
    
    public List<Jogo> listaJogosPendentes();
    
}
