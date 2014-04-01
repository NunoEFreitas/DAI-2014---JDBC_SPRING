/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.TipoUtilizador;
import com.dai.domain.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class TipoUtilizadorRowMapper implements RowMapper<TipoUtilizador>{
    
        @Override
	public TipoUtilizador mapRow(ResultSet resultSet, int line) throws SQLException {
		TipoUtilizadorExtractor tuExtractor = new TipoUtilizadorExtractor();
		return tuExtractor.extractData(resultSet);
	}
}
