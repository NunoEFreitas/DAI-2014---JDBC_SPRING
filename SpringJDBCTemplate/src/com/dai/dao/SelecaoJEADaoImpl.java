/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.SelecaoJEA;
import com.dai.jdbc.SelecaoJEARowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class SelecaoJEADaoImpl implements SelecaoJEADao {
    
        @Autowired
	DataSource dataSource;

        @Override
	public void adicionaSJEA(SelecaoJEA sjea) {

		String sql = "INSERT INTO selecaoJEA "
				+ "( idJogadorEquipaAdversaria_s, idJogo_s, nomeJEA) VALUES (?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {sjea.getIdJEA(), sjea.getIdJogo(), sjea.getNome() });

	}
        
        @Override
	public void apagaSJEA(int idJEA, int idJogo) {
            
            String sql = "delete from selecaoJEA where idJogadorEquipaAdversaria_s =" + idJEA + " and idJogo_s =" + idJogo;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
            
        }
        
         @Override
        public List<SelecaoJEA> listaSJEA(int idJogo){
            
            List<SelecaoJEA> slList = new ArrayList();

		String sql = "select * from selecaoJEA where idJogo_s=" + idJogo;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		slList = jdbcTemplate.query(sql, new SelecaoJEARowMapper());
		return slList;
        }
    
}
