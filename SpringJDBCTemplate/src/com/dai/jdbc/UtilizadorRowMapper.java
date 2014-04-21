package com.dai.jdbc;

import com.dai.domain.Utilizador;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class UtilizadorRowMapper implements RowMapper<Utilizador> {

	@Override
	public Utilizador mapRow(ResultSet resultSet, int line) throws SQLException {
		UtilizadorExtractor utilizadorExtractor = new UtilizadorExtractor();
		return utilizadorExtractor.extractData(resultSet);
	}

}
