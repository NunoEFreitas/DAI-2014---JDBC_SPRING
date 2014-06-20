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
public class Estatistica {
    
    private int idEstatistica;
    private int idJogo;
    private int idTipoEstatistica;
    private int idUtilizador;
    private int idJea;
    private int origem;
    private int destino;
    private int classificacao;
    private String rotacaoPropria;
    private String rotacaoEA;

    public int getIdEstatistica() {
        return idEstatistica;
    }

    public void setIdEstatistica(int idEstatistica) {
        this.idEstatistica = idEstatistica;
    }

    public int getIdJogo() {
        return idJogo;
    }

    public void setIdJogo(int idJogo) {
        this.idJogo = idJogo;
    }

    public int getIdTipoEstatistica() {
        return idTipoEstatistica;
    }

    public void setIdTipoEstatistica(int idTipoEstatistica) {
        this.idTipoEstatistica = idTipoEstatistica;
    }

    public int getIdUtilizador() {
        return idUtilizador;
    }

    public void setIdUtilizador(int idUtilizador) {
        this.idUtilizador = idUtilizador;
    }

    public int getIdJea() {
        return idJea;
    }

    public void setIdJea(int idJea) {
        this.idJea = idJea;
    }

    public int getOrigem() {
        return origem;
    }

    public void setOrigem(int origem) {
        this.origem = origem;
    }

    public int getDestino() {
        return destino;
    }

    public void setDestino(int destino) {
        this.destino = destino;
    }

    public int getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(int classificacao) {
        this.classificacao = classificacao;
    }

    public String getRotacaoPropria() {
        return rotacaoPropria;
    }

    public void setRotacaoPropria(String rotacaoPropria) {
        this.rotacaoPropria = rotacaoPropria;
    }

    public String getRotacaoEA() {
        return rotacaoEA;
    }

    public void setRotacaoEA(String rotacaoEA) {
        this.rotacaoEA = rotacaoEA;
    }


    
    
    
}
