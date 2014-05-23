/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.domain;

/**
 *
 * @author Samuel Costa
 */
public class Pagamento {
    
    private int idpagamento;
    private int idrecebimento;
    private int idutilizador;
    private int valorReceber;
    private int valorPagar;
    private String nomeutilizador;

    public void setData(String data) {
        this.data = data;
    }
    private int idescalao;

    public String getData() {
        return data;
    }
    private String data;

    public void setIdpagamento(int idpagamento) {
        this.idpagamento = idpagamento;
    }

    public void setIdrecebimento(int idrecebimento) {
        this.idrecebimento = idrecebimento;
    }

    public void setIdutilizador(int idutilizador) {
        this.idutilizador = idutilizador;
    }

    public void setValorReceber(int valorReceber) {
        this.valorReceber = valorReceber;
    }

    public void setValorPagar(int valorPagar) {
        this.valorPagar = valorPagar;
    }

    public void setNomeutilizador(String nomeutilizador) {
        this.nomeutilizador = nomeutilizador;
    }

    public void setIdescalao(int idescalao) {
        this.idescalao = idescalao;
    }

    public int getIdpagamento() {
        return idpagamento;
    }

    public int getIdrecebimento() {
        return idrecebimento;
    }

    public int getIdutilizador() {
        return idutilizador;
    }

    public int getValorReceber() {
        return valorReceber;
    }

    public int getValorPagar() {
        return valorPagar;
    }

    public String getNomeutilizador() {
        return nomeutilizador;
    }

    public int getIdescalao() {
        return idescalao;
    }
    
    
    
}