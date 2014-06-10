/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.Treino;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface TreinoService {
    
    public void novoTreino(Treino treino);
    
    public List<Treino> listaTreinos();
    
    public void apagaTreino(int idTreino);
    
    public void updateTreino(Treino idTreino);
    
    public List<Treino> listaTreinosEscalao(int idEscalao);
}
