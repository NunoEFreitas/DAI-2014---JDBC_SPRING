/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.SelecaoTreino;
import com.dai.jdbc.SelecaoTreinoRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class SelecaoTreinoDaoImpl implements SelecaoTreinoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void adicionaST(SelecaoTreino st) {

		String sql = "INSERT INTO selecaoTreino "
				+ "( utilizador_idutilizador_st, treino_idtreino) VALUES (?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {st.getIdUtilizador(),st.getIdUtilizador() });

	}
        
        @Override
	public void apagaST(int idUtilizador, int idTreino) {
            
            String sql = "delete from selecaoTreino where utilizador_idUtilizador_st =" + idUtilizador + "and treino_idtreino = " + idTreino;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
            
        }
        
        public List<SelecaoTreino> listaST(int idTreino){
            
            List<SelecaoTreino> stList = new ArrayList();

		String sql = "select * from selecaoTreino where treino_idtreino=" + idTreino;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		stList = jdbcTemplate.query(sql, new SelecaoTreinoRowMapper());
		return stList;
        }
    
}
