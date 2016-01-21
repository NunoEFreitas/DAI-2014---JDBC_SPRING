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
public class Competicao {
    
    private int idCompeticao;
    private String designacao;
    private int idEscalao;

    public int getIdEscalao() {
        return idEscalao;
    }

    public void setIdEscalao(int idEscalao) {
        this.idEscalao = idEscalao;
    }
    
    

    public int getIdCompeticao() {
        return idCompeticao;
    }

    public void setIdCompeticao(int idCompeticao) {
        this.idCompeticao = idCompeticao;
    }

    public String getDesignacao() {
        return designacao;
    }

    public void setDesignacao(String designacao) {
        this.designacao = designacao;
    }
    
    
}
