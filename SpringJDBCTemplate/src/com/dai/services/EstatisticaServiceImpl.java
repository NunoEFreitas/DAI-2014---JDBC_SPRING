/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.EstatisticaDao;
import com.dai.domain.Estatistica;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class EstatisticaServiceImpl implements EstatisticaService{
    
    @Autowired
    EstatisticaDao estdao;

    @Override
    public void adicionaEstatistica(Estatistica est){
        estdao.adicionaEstatistica(est);
    }
    
    @Override
    public void removeEstatistica(Integer idEst){
        estdao.removeEstatistica(idEst);
    }
    
    @Override
    public List<Estatistica> listaServicosP(Integer idJogo){
        return estdao.listaServicosP(idJogo);
    }
    
}
