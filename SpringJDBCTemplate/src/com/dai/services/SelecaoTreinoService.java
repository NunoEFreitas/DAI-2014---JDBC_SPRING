/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.domain.SelecaoTreino;
import java.util.List;

/**
 *
 * @author Nuno
 */
public interface SelecaoTreinoService {
    
    public void adicionaST(SelecaoTreino st);
    
    public void apagaST(int idUtilizador, int idTreino);
    
    public List<SelecaoTreino> listaST(int idTreino);
    
    public List<SelecaoTreino> listaSTparaPresencas(int idTreino);
    
    public void jogadorPresente(int idTreino, int idUtilizador);
    
    public void jogadorFaltou(int idTreino, int idUtilizador);
    
}
