/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Jogo;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class JogoDaoImpl implements JogoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void novoJogo(Jogo jogo) {

		String sql = "INSERT INTO jogo "
				+ "( localJogo, dataJogo,resultadoJogo, horaJogo) VALUES (?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { jogo.getLocal(), jogo.getData(), jogo.getResultado(), jogo.getHora()});

	}
}