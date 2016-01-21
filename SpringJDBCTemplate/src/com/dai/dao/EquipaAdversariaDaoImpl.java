/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.EquipaAdversaria;
import com.dai.jdbc.EquipaAdversariaRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class EquipaAdversariaDaoImpl implements EquipaAdversariaDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void adicionaEA(EquipaAdversaria ea) {

		String sql = "INSERT INTO equipaAdversaria "
				+ "( nomeEquipaAdversaria, escalao_idEscalao_ea) VALUES (?,?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {ea.getNome(), ea.getidEscalao() });

	}
        
        @Override
	public void apagaEA(int idEA) {
            
            String sql = "delete from equipaAdversaria where idEquipaAdversaria =" + idEA;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
            
        }
        
        @Override
        public List<EquipaAdversaria> listaEA(){
            
            List<EquipaAdversaria> eaList = new ArrayList();

		String sql = "select * from equipaAdversaria" ;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		eaList = jdbcTemplate.query(sql, new EquipaAdversariaRowMapper());
		return eaList;
        }
        
        @Override
        public List<EquipaAdversaria> listaEAporEscalao(int idEscalao){
            
            List<EquipaAdversaria> eaList = new ArrayList();

		String sql = "select * from equipaAdversaria where escalao_idEscalao_ea = " + idEscalao ;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		eaList = jdbcTemplate.query(sql, new EquipaAdversariaRowMapper());
		return eaList;
            
        }
    
}
