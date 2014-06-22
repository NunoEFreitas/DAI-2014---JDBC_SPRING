/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.domain;

import java.sql.Blob;
import java.util.Date;

/**
 *
 * @author Nuno
 */
public class Utilizador {

   
    private int idUtilizador;
    private String nome;
    private String password;
    private String dataNascimento;
    private String morada;
    private String sexo;
    private int telefone;
    private String email;
    private float altura;
    private float peso;
    private String estatura;
    private int envergadura;
    private int saltoVertical;
    private int velocidadeDeslocamento;
    private int alcanceAtaque;
    private int alcanceBloco;
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

    public void setEnvergadura(int envergadura) {
        this.envergadura = envergadura;
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

    public float getAlcanceAtaque() {
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

    public boolean getExamesClinicos() {
        return examesClinicos;
    }

    public void setExamesClinicos(boolean examesClinicos) {
        this.examesClinicos = examesClinicos;
    }

    public boolean getEstado() {
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
