/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.jdbc;

import com.dai.domain.Rh;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Samuel Costa
 */
public class RhRowMapper implements RowMapper<Rh> {

	@Override
	public Rh mapRow(ResultSet resultSet, int line) throws SQLException {
		RhExtractor pagamentoExtractor = new RhExtractor();
		return pagamentoExtractor.extractData(resultSet);
	}

}

