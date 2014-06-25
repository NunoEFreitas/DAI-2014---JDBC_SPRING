/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Estatistica;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class EstatisticaExtractorL implements ResultSetExtractor<Estatistica> {
    
    public Estatistica extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Estatistica estatistica = new Estatistica();
		
                estatistica.setIdEstatistica(resultSet.getInt("idEstatistica"));
                estatistica.setIdJogo(resultSet.getInt("idjogo_est"));
                estatistica.setIdTipoEstatistica(resultSet.getInt("tiposEstatistica_idtiposEstatistica"));
                estatistica.setIdUtilizador(resultSet.getInt("idutilizador_est"));
                estatistica.setIdJea(resultSet.getInt("idJEA_est"));
                estatistica.setDestino(resultSet.getInt("destino"));
                estatistica.setOrigem(resultSet.getInt("origem"));
                estatistica.setClassificacao(resultSet.getInt("classificacao"));
                estatistica.setRotacaoPropria(resultSet.getString("rotacaoPropria"));
                estatistica.setRotacaoEA(resultSet.getString("rotacaoEA"));
                estatistica.setNomeUtilizador(resultSet.getString("selecaoJogo.nomeSL"));
                estatistica.setDesignacaoEstatistica(resultSet.getString("tipoEstatistica.designacaoEstatistica"));

                
		return estatistica;
	}
    
    
}
