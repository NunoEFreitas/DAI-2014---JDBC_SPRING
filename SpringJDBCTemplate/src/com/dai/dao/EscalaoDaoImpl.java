/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import com.dai.jdbc.EscalaoRowMapper;
import com.dai.jdbc.PerfilRowMapper;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;

/**
 *
 * @author Nuno
 */
public class EscalaoDaoImpl implements EscalaoDao {
    
    @Autowired
	DataSource dataSource;
        /*
        @Override
	public void inserirEscalao(final Escalao escalao) {
		JdbcTemplate template = new JdbcTemplate(dataSource);                
		template.execute("INSERT INTO escalao (designacaoEscalao) VALUES(?)", new PreparedStatementCallback<Boolean>() {
                    public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                        ps.setString(1, escalao.getDesignacao());
                        return ps.execute();
                    }
                });
	}
        */
    
        public void inserirEscalao(Escalao escalao) {
		JdbcTemplate template = new JdbcTemplate(dataSource);                
		String sql = "INSERT INTO escalao "
				+ "(designacaoEscalao) VALUES (?)";
                
                template.update(
				sql,
				new Object[] { escalao.getDesignacao()});
	}
        
        @Override
        public List<Escalao> listarEscalao() {
		List<Escalao> le = new ArrayList();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		le = template.query("SELECT * FROM escalao", new EscalaoRowMapper());
		return le;
	}

	@Override
	public void apagarEscalao(Integer id) {
		String sql = "delete from escalao where idEscalao=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}
    
}
