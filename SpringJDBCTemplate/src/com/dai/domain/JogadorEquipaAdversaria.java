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
public class JogadorEquipaAdversaria {
    
    private int idJogador;
    private String nome;
    private String posicao;
    private int idEquipaAdversaria;

    public int getIdJogador() {
        return idJogador;
    }

    public void setIdJogador(int idJogador) {
        this.idJogador = idJogador;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPosicao() {
        return posicao;
    }

    public void setPosicao(String posicao) {
        this.posicao = posicao;
    }

    public int getIdEquipaAdversaria() {
        return idEquipaAdversaria;
    }

    public void setIdEquipaAdversaria(int idEquipaAdversaria) {
        this.idEquipaAdversaria = idEquipaAdversaria;
    }
    
    
    
}
