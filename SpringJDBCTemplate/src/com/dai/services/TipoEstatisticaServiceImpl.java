/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.TipoEstatisticaDao;
import com.dai.domain.TipoEstatistica;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class TipoEstatisticaServiceImpl implements TipoEstatisticaService{
    
    @Autowired
    TipoEstatisticaDao tedao;

    @Override
    public List<TipoEstatistica> listaEstatisticas(){
        return tedao.listaEstatisticas();
    }
    
}
