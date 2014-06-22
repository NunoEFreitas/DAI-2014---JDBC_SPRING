/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Estatistica;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface EstatisticaDao {
    
    public void adicionaEstatistica(Estatistica est);
    
    public void removeEstatistica(Integer idEst);
    
    public List<Estatistica> listaServicosP(Integer idJogo);
    
    public List<Estatistica> listaServicosA(Integer idJogo);
    
    public List<Estatistica> listaAtaquesA(Integer idJogo);
    
    public List<Estatistica> listaAtaquesP(Integer idJogo);
    
    public List<Estatistica> listaBlocosP(Integer idJogo);
    
    public List<Estatistica> listaDefesasP(Integer idJogo);
    
    public List<Estatistica> listaDefesasA(Integer idJogo);
    /*
    public List<Estatistica> listaEstatisticas();
    
    public List<Estatistica> listaEstatisticasPorJogador(Integer idJogador);
    
    public List<Estatistica> listaEstatisticasPorJogo(Integer idJogo);
    
    public List<Estatistica> listaEstatisticasPorEA(Integer idEa);
    
    public List<Estatistica> listaEstatisticasPorTipoJogo(Integer idEst, Integer idJogo);
    
    public List<Estatistica> listaEstatisticasPorTipoJogoJogador(Integer idEst, Integer idJogo, Integer idJogador);
    */
}
