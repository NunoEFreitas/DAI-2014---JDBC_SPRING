/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.domain;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author Nuno
 */
public class Treino {
    
    private int idTreino;
    private int duracaoTreino;
    private String localTreino;
    private String dataTreino;
    private String tipoTreino;
    private String horaTreino;
    private int idEscalao;

    public int getIdEscalao() {
        return idEscalao;
    }

    public void setIdEscalao(int idEscalao) {
        this.idEscalao = idEscalao;
    }
    
    

    public String getHoraTreino() {
        return horaTreino;
    }

    public void setHoraTreino(String horaTreino) {
        this.horaTreino = horaTreino;
    }

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

    public String getDataTreino() {
        return dataTreino;
    }

    public void setDataTreino(String dataTreino) {
        this.dataTreino = dataTreino;
    }

    public String getTipoTreino() {
        return tipoTreino;
    }

    public void setTipoTreino(String tipoTreino) {
        this.tipoTreino = tipoTreino;
    }
    
    
    
    
    
}
