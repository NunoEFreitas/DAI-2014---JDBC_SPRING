/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Jogo;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface JogoService {
    
    public void novoJogo(Jogo jogo);
    
    public List<Jogo> listaJogos();
}
