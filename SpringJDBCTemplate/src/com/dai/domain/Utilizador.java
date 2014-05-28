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
public class Utilizador {

   
    private int idUtilizador;
    private String nome;
    private String password;
    private Date dataNascimento;
    private String morada;
    private String sexo;
    private int telefone;
    private String email;
    private float altura;
    private float peso;
    private String estatura;
    private float envergadura;
    private float saltoVertical;
    private float velocidadeDeslocamento;
    private float alcanceAtaque;
    private float alcanceBloco;
    private boolean examesClinicos;
    private boolean estado;
    private int idPerfil;
    private int idEscalao;

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

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
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

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public String getEstatura() {
        return estatura;
    }

    public void setEstatura(String estatura) {
        this.estatura = estatura;
    }

    public float getEnvergadura() {
        return envergadura;
    }

    public void setEnvergadura(float envergadura) {
        this.envergadura = envergadura;
    }

    public float getSaltoVertical() {
        return saltoVertical;
    }

    public void setSaltoVertical(float saltoVertical) {
        this.saltoVertical = saltoVertical;
    }

    public float getVelocidadeDeslocamento() {
        return velocidadeDeslocamento;
    }

    public void setVelocidadeDeslocamento(float velocidadeDeslocamento) {
        this.velocidadeDeslocamento = velocidadeDeslocamento;
    }

    public float getAlcanceAtaque() {
        return alcanceAtaque;
    }

    public void setAlcanceAtaque(float alcanceAtaque) {
        this.alcanceAtaque = alcanceAtaque;
    }

    public float getAlcanceBloco() {
        return alcanceBloco;
    }

    public void setAlcanceBloco(float alcanceBloco) {
        this.alcanceBloco = alcanceBloco;
    }

    public boolean getExamesClinicos() {
        return examesClinicos;
    }

    public void setExamesClinicos(boolean examesClinicos) {
        this.examesClinicos = examesClinicos;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
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
    
    
    
}
