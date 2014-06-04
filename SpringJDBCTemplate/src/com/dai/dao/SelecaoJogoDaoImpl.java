/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.SelecaoJogo;
import com.dai.jdbc.SelecaoJogoRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class SelecaoJogoDaoImpl implements SelecaoJogoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void adicionaSL(SelecaoJogo sl) {

		String sql = "INSERT INTO selecaoJogo "
				+ "( utilizador_idutilizador, jogo_idjogo) VALUES (?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {sl.getIdUtilizador(), sl.getIdJogo() });

	}
        
        @Override
	public void apagaSL(int idUtilizador, int idJogo) {
            
            String sql = "delete from selecaoJogo where utilizador_idUtilizador =" + idUtilizador + "and jogo_idJogo =" + idJogo;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
            
        }
        
        public List<SelecaoJogo> listaSL(int idJogo){
            
            List<SelecaoJogo> slList = new ArrayList();

		String sql = "select * from selecaoJogo where jogo_idjogo=" + idJogo;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		slList = jdbcTemplate.query(sql, new SelecaoJogoRowMapper());
		return slList;
        }
}
