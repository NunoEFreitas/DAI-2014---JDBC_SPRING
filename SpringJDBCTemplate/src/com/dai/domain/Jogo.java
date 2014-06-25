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
public class Jogo {

    public int getIdJogo() {
        return idJogo;
    }

    public void setIdJogo(int idJogo) {
        this.idJogo = idJogo;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getResultadoCasa() {
        return resultadoCasa;
    }

    public void setResultadoCasa(int resultadoCasa) {
        this.resultadoCasa = resultadoCasa;
    }

    public int getResultadoFora() {
        return resultadoFora;
    }

    public void setResultadoFora(int resultadoFora) {
        this.resultadoFora = resultadoFora;
    }

    public int getSetCasa() {
        return setCasa;
    }

    public void setSetCasa(int setCasa) {
        this.setCasa = setCasa;
    }

    public int getSetFora() {
        return setFora;
    }

    public void setSetFora(int setFora) {
        this.setFora = setFora;
    }


    
    private int idJogo;
    private String local;
    private String data;
    private String hora;
    private int resultadoCasa;
    private int resultadoFora;
    private int setCasa;
    private int setFora;
    private int idCompeticao;
    private int idEquipaAdversaria;
    private String designacaoC;
    private String designacaoEA;
    private boolean status;

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    

    public String getDesignacaoC() {
        return designacaoC;
    }

    public void setDesignacaoC(String designacaoC) {
        this.designacaoC = designacaoC;
    }

    public String getDesignacaoEA() {
        return designacaoEA;
    }

    public void setDesignacaoEA(String designacaoEA) {
        this.designacaoEA = designacaoEA;
    }
    
    

    public int getIdCompeticao() {
        return idCompeticao;
    }

    public void setIdCompeticao(int idCompeticao) {
        this.idCompeticao = idCompeticao;
    }


    

    public int getIdEquipaAdversaria() {
        return idEquipaAdversaria;
    }

    public void setIdEquipaAdversaria(int idEquipaAdversaria) {
        this.idEquipaAdversaria = idEquipaAdversaria;
    }

    
    
    
}
