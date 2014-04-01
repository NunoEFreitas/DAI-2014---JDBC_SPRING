package com.dai.domain;

public class User {

	private int idUtilizador;
	private String Nome;
	private String Morada;
	private int Telefone;
	private int Telemovel;
        private int Altura;
        private int Peso;
        private String email;
        private String password;
        private String tipo_de_utilizador;

    public int getIdUtilizador() {
        return idUtilizador;
    }

    public void setIdUtilizador(int idUtilizador) {
        this.idUtilizador = idUtilizador;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getMorada() {
        return Morada;
    }

    public void setMorada(String Morada) {
        this.Morada = Morada;
    }

    public int getTelefone() {
        return Telefone;
    }

    public void setTelefone(int Telefone) {
        this.Telefone = Telefone;
    }

    public int getTelemovel() {
        return Telemovel;
    }

    public void setTelemovel(int Telemovel) {
        this.Telemovel = Telemovel;
    }

    public int getAltura() {
        return Altura;
    }

    public void setAltura(int Altura) {
        this.Altura = Altura;
    }

    public int getPeso() {
        return Peso;
    }

    public void setPeso(int Peso) {
        this.Peso = Peso;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipo_de_utilizador() {
        return tipo_de_utilizador;
    }

    public void setTipo_de_utilizador(String tipo_de_utilizador) {
        this.tipo_de_utilizador = tipo_de_utilizador;
    }

    
}
