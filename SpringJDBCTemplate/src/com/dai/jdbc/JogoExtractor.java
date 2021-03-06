/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Jogo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class JogoExtractor implements ResultSetExtractor<Jogo> {
    
    public Jogo extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Jogo jogo = new Jogo();
		
                jogo.setIdJogo(resultSet.getInt("idJogo"));
                jogo.setLocal(resultSet.getString("localJogo"));
                jogo.setData(resultSet.getString("dataJogo"));
                jogo.setHora(resultSet.getString("horaJogo"));
                jogo.setResultado(resultSet.getString("resultadoJogo"));
                jogo.setResultado(resultSet.getString("competicao"));
                

                
		return jogo;
	}
    
}
