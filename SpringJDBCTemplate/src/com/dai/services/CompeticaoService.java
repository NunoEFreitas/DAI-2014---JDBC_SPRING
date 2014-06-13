/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Competicao;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface CompeticaoService {
    
    public void adicionaCompeticao(Competicao competicao);
    
    public void apagaCompeticao(int idCompeticao);
    
    public List<Competicao> listaCompeticao();
    
    public List<Competicao> listaCompeticaoPorEscalao(Integer idEscalao);
    
}
