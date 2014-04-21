/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Perfil;
import com.dai.jdbc.PerfilRowMapper;
import com.dai.jdbc.UtilizadorRowMapper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.PreparedStatementCreator;

/**
 *
 * @author Nuno
 */
public class PerfilDaoImpl implements PerfilDao {
    
        @Autowired
	DataSource dataSource;
/*
        @Override
	public void inserirPerfil(final Perfil perfil) {
		JdbcTemplate template = new JdbcTemplate(dataSource);                
		template.execute("INSERT INTO perfil (designacaoPerfil) VALUES(?)", new PreparedStatementCallback<Boolean>() {
                    public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                        ps.setString(1, perfil.getDesignacao());
                        return ps.execute();
                    }
                });
	}
  */
        
        public void inserirPerfil(Perfil perfil) {
		JdbcTemplate template = new JdbcTemplate(dataSource);                
		String sql = "INSERT INTO perfil "
				+ "(designacaoPerfil) VALUES (?)";
                
                template.update(
				sql,
				new Object[] { perfil.getDesignacao()});
	}
        
        @Override
        public List<Perfil> listarPerfil() {
		List<Perfil> lp = new ArrayList();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		lp = template.query("SELECT * FROM perfil", new PerfilRowMapper());
		return lp;
	}

	@Override
	public void apagarPerfil(Integer id) {
		String sql = "delete from perfil where idPerfil=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}
}
