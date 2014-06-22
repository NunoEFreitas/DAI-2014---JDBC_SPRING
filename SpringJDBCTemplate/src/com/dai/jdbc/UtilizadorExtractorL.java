/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Utilizador;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Nuno
 */
public class UtilizadorExtractorL {
    
    public Utilizador extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Utilizador utilizador = new Utilizador();
		
                utilizador.setIdUtilizador(resultSet.getInt("idUtilizador"));
                utilizador.setNome(resultSet.getString("nomeUtilizador"));
                utilizador.setPassword(resultSet.getString("password"));
                utilizador.setDataNascimento(resultSet.getString("dataNascimento"));
                utilizador.setMorada(resultSet.getString("morada"));
                utilizador.setSexo(resultSet.getString("sexo"));
                utilizador.setTelefone(resultSet.getInt("telefone"));
                utilizador.setEmail(resultSet.getString("email"));
                utilizador.setAltura(resultSet.getFloat("altura"));
                utilizador.setPeso(resultSet.getFloat("peso"));
                utilizador.setSaltoVertical(resultSet.getInt("saltoVertical"));
                utilizador.setVelocidadeDeslocamento(resultSet.getInt("velocidadeDeslocamento"));
                utilizador.setAlcanceAtaque(resultSet.getInt("alcanceAtaque"));
                utilizador.setAlcanceBloco(resultSet.getInt("alcanceBloco"));
                utilizador.setExamesClinicos(resultSet.getBoolean("examesClinicos"));
                utilizador.setIdPerfil(resultSet.getInt("idPerfil"));
                utilizador.setIdEscalao(resultSet.getInt("idEscalao"));
                 utilizador.setEstado(resultSet.getBoolean("estado"));
             
                 utilizador.setEstatura(resultSet.getString("estatura"));
                   utilizador.setEnvergadura(resultSet.getInt("envergadura"));
            
		return utilizador;
	}
    
}
