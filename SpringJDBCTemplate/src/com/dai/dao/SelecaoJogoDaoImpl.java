/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.SelecaoJogo;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class SelecaoJogoDaoImpl implements SelecaoJogoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void adicionaSL(SelecaoJogo sl) {

		String sql = "INSERT INTO selecaoJogo "
				+ "( utilizador_idutilizador, jogo_idjogo) VALUES (?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {sl.getIdUtilizador(), sl.getIdJogo() });

	}
}
