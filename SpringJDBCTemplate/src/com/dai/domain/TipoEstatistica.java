/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.domain;

/**
 *
 * @author Nuno
 */
public class TipoEstatistica {

    public int getIdTipoEstatistica() {
        return idTipoEstatistica;
    }

    public void setIdTipoEstatistica(int idTipoEstatistica) {
        this.idTipoEstatistica = idTipoEstatistica;
    }

    public String getDesignacaoEstatistica() {
        return designacaoEstatistica;
    }

    public void setDesignacaoEstatistica(String designacaoEstatistica) {
        this.designacaoEstatistica = designacaoEstatistica;
    }
    
    private int idTipoEstatistica;
    private String designacaoEstatistica;
    
    
    
}
