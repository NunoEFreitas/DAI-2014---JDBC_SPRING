/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Treino;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;



/**
 *
 * @author Nuno
 */
public class TreinoRowMapper implements RowMapper<Treino> {
    
    @Override
	public Treino mapRow(ResultSet resultSet, int line) throws SQLException {
		TreinoExtractor treinoExtractor = new TreinoExtractor();
		return treinoExtractor.extractData(resultSet);
	}
    
}
