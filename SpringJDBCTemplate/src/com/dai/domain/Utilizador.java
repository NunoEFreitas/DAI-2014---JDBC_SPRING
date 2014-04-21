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
public class Utilizador {

    public int getIdUtilizador() {
        return idUtilizador;
    }

    public void setIdUtilizador(int idUtilizador) {
        this.idUtilizador = idUtilizador;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getMorada() {
        return morada;
    }

    public void setMorada(String morada) {
        this.morada = morada;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getSaltoVertical() {
        return saltoVertical;
    }

    public void setSaltoVertical(int saltoVertical) {
        this.saltoVertical = saltoVertical;
    }

    public int getVelocidadeDeslocamento() {
        return velocidadeDeslocamento;
    }

    public void setVelocidadeDeslocamento(int velocidadeDeslocamento) {
        this.velocidadeDeslocamento = velocidadeDeslocamento;
    }

    public int getAlcanceAtaque() {
        return alcanceAtaque;
    }

    public void setAlcanceAtaque(int alcanceAtaque) {
        this.alcanceAtaque = alcanceAtaque;
    }

    public int getAlcanceBloco() {
        return alcanceBloco;
    }

    public void setAlcanceBloco(int alcanceBloco) {
        this.alcanceBloco = alcanceBloco;
    }

    public String getExamesClinicos() {
        return examesClinicos;
    }

    public void setExamesClinicos(String examesClinicos) {
        this.examesClinicos = examesClinicos;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }

    public int getIdEscalao() {
        return idEscalao;
    }

    public void setIdEscalao(int idEscalao) {
        this.idEscalao = idEscalao;
    }
    
    private int idUtilizador;
    private String nome;
    private String password;
    private String dataNascimento;
    private String morada;
    private String sexo;
    private int telefone;
    private String email;
    private int altura;
    private int peso;
    private int saltoVertical;
    private int velocidadeDeslocamento;
    private int alcanceAtaque;
    private int alcanceBloco;
    private String examesClinicos;
    private int idPerfil;
    private int idEscalao;
    
    
    
}
