/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Estatistica;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class EstatisticaDaoImpl implements EstatisticaDao {
    
    @Autowired
    DataSource dataSource;

       
    @Override
    public void adicionaEstatistica(Estatistica est){
        
        String sql = "INSERT INTO estatistica "
			+ "( idutilizador_est, idjogo_est, tiposEstatistica_idtiposEstatistica, "
                        + "idJEA_est, classificacao, origem, destino, rotacaoPropria, rotacaoEA) "
                        + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { est.getIdUtilizador(), est.getIdJogo(), est.getIdTipoEstatistica(), 
                                    est.getIdJea(), est.getClassificacao(), est.getOrigem(), est.getDestino(), est.getRotacaoPropria(), est.getRotacaoEA()});

	}
        
    
    
    @Override
    public void removeEstatistica(Integer idEst){
        String sql = "delete from estatistica idEstatistica =" + idEst;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
                jdbcTemplate.update(sql);
	
    }
    /*
    public List<Estatistica> listaEstatisticas(){
        
    }
    
    public List<Estatistica> listaEstatisticasPorJogador(Integer idJogador){
        
    }
    
    public List<Estatistica> listaEstatisticasPorJogo(Integer idJogo){
        
    }
    
    public List<Estatistica> listaEstatisticasPorEA(Integer idEa){
        
    }
    
    public List<Estatistica> listaEstatisticasPorTipoJogo(Integer idEst, Integer idJogo){
        
    }
    
    public List<Estatistica> listaEstatisticasPorTipoJogoJogador(Integer idEst, Integer idJogo, Integer idJogador){
        
    }
    */
}
