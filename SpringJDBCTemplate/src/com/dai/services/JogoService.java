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
    
    public List<Jogo> listaJogosPendentes();
    
    public void alteraJogo(Jogo jogo);
    
    public List<Jogo> listaJogosPendentesEscalao(Integer idEscalao);
    
    public void apagaJogo(Integer idJogo);
    
    public List<Jogo> listaJogosPassados(Integer idEscalao);
    
    public List<Jogo> listaJogosSelecionado(Integer idUtilizador);
    
    public List<Jogo> getJogo(Integer idJogo);
    
    public List<Jogo> listaHistoricoAtleta(Integer idUtilizador);
    
    public void finalizarJogo(Integer idJogo);
    
    public void updateResultado(Jogo jogo);
}
