/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.jdbc;

import com.dai.domain.Pagamento;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Samuel Costa
 */
public class PagamentoRowMapper implements RowMapper<Pagamento> {

	@Override
	public Pagamento mapRow(ResultSet resultSet, int line) throws SQLException {
		PagamentoExtractor pagamentoExtractor = new PagamentoExtractor();
		return pagamentoExtractor.extractData(resultSet);
	}

}

