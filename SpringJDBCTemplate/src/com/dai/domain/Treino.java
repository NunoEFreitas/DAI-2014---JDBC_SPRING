/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.domain;

import java.util.Date;

/**
 *
 * @author Nuno
 */
public class Treino {
    
    private int idTreino;
    private int duracaoTreino;
    private String localTreino;
    private Date dataTreino;
    private String tipoTreino;

    public int getIdTreino() {
        return idTreino;
    }

    public void setIdTreino(int idTreino) {
        this.idTreino = idTreino;
    }

    public int getDuracaoTreino() {
        return duracaoTreino;
    }

    public void setDuracaoTreino(int duracaoTreino) {
        this.duracaoTreino = duracaoTreino;
    }

    public String getLocalTreino() {
        return localTreino;
    }

    public void setLocalTreino(String localTreino) {
        this.localTreino = localTreino;
    }

    public Date getDataTreino() {
        return dataTreino;
    }

    public void setDataTreino(Date dataTreino) {
        this.dataTreino = dataTreino;
    }

    public String getTipoTreino() {
        return tipoTreino;
    }

    public void setTipoTreino(String tipoTreino) {
        this.tipoTreino = tipoTreino;
    }
    
    
    
    
    
}
