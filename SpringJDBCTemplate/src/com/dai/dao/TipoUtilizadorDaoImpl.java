/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.TipoUtilizador;
import com.dai.jdbc.TipoUtilizadorRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class TipoUtilizadorDaoImpl implements TipoUtilizadorDao {
    
    @Autowired
	DataSource dataSource;

	public void insertData(TipoUtilizador tu) {

		String sql = "INSERT INTO tipoutilizador "
				+ "(idTipoUtilizador, Designacao) VALUES (?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { tu.getIdTipoUtilizador(), tu.getDescricao()});

	}

	public List<TipoUtilizador> getTipoUtilizadorList() {
		List<TipoUtilizador> tuList = new ArrayList();

		String sql = "select * from tipoutilizador";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		tuList = jdbcTemplate.query(sql, new TipoUtilizadorRowMapper());
		return tuList;
	}

    
}
