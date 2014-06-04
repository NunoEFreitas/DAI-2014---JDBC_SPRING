/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Treino;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class TreinoExtractor implements ResultSetExtractor<Treino> {

	public Treino extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Treino treino = new Treino();
                
                treino.setIdTreino(resultSet.getInt("idTreino"));
		treino.setDuracaoTreino(resultSet.getInt("duracaoTreino"));
                treino.setLocalTreino(resultSet.getString("localTreino"));
                treino.setDataTreino(resultSet.getDate("dataTreino"));
                treino.setTipoTreino(resultSet.getString("tipoTreino"));
                

		return treino;
	}

}
