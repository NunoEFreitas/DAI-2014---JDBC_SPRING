/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Estatistica;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface EstatisticaService {
    
    public void adicionaEstatistica(Estatistica est);
    
    public void removeEstatistica(Integer idEst);
    
    public List<Estatistica> listaServicosP(Integer idJogo);
    
    public List<Estatistica> listaServicosA(Integer idJogo);
    
    public List<Estatistica> listaAtaquesA(Integer idJogo);
    
    public List<Estatistica> listaAtaquesP(Integer idJogo);
    
    public List<Estatistica> listaBlocosP(Integer idJogo);
    
    public List<Estatistica> listaDefesasP(Integer idJogo);
    
    public List<Estatistica> listaDefesasA(Integer idJogo);
    
    public void adicionaEstatisticaSJEA(Estatistica est);
    
    public void adicionaEstatisticaSJ(Estatistica est);
    
    public List<Estatistica> listaEstatisticasPorJogador(Integer idJogo, Integer idJogador);
    
     public List<Estatistica> listaEstatisticasPorJogo(Integer idJogo);
    
}
