/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Treino;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface TreinoDao {
    
    public void inserirTreino(Treino treino);

	public List<Treino> listarTreinos();

	public void updateTreino(Treino treino);

	public void apagarTreino(Integer idTreino);

}
