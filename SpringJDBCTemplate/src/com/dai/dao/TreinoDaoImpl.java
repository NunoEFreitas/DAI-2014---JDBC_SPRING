/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Jogo;
import com.dai.domain.Treino;
import com.dai.jdbc.JogoRowMapper;
import com.dai.jdbc.TreinoRowMapper;
import com.dai.jdbc.UtilizadorRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class TreinoDaoImpl implements TreinoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void inserirTreino(Treino treino) {

		String sql = "INSERT INTO treino "
				+ "( duracaoTreino, localTreino, dataTreino, tipoTreino) VALUES (?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {treino.getDuracaoTreino(), treino.getLocalTreino(), treino.getDataTreino(), treino.getTipoTreino() });

	}
        
        @Override
        public List<Treino> listarTreinos(){
                List<Treino> treinoList = new ArrayList();

		String sql = "select * from jogo where resultadoJogo is null";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		treinoList = jdbcTemplate.query(sql, new TreinoRowMapper());
		return treinoList;
        }
        
        @Override
        public void updateTreino(Treino treino){
            
            
        }
        
        @Override        
        public void apagarTreino(Integer idTreino){
            
            
        }
        
    
}
