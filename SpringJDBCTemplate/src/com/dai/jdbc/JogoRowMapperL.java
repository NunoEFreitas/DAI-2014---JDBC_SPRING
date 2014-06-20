/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Jogo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class JogoRowMapperL implements RowMapper<Jogo> {
    
    @Override
	public Jogo mapRow(ResultSet resultSet, int line) throws SQLException {
		JogoExtractorL jogoExtractor = new JogoExtractorL();
		return jogoExtractor.extractData(resultSet);
	}
    
}
