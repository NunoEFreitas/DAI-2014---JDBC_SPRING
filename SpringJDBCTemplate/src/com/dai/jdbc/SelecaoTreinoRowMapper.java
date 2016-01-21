/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoTreino;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class SelecaoTreinoRowMapper implements RowMapper<SelecaoTreino> {
    
    @Override
	public SelecaoTreino mapRow(ResultSet resultSet, int line) throws SQLException {
		SelecaoTreinoExtractor stExtractor = new SelecaoTreinoExtractor();
		return stExtractor.extractData(resultSet);
	}
    
}
