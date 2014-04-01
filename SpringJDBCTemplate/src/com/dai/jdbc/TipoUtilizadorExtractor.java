/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.TipoUtilizador;
import com.dai.domain.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class TipoUtilizadorExtractor implements ResultSetExtractor<TipoUtilizador> {
    
    public TipoUtilizador extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		TipoUtilizador tu = new TipoUtilizador();
		
                tu.setIdTipoUtilizador(resultSet.getInt(1));
                tu.setDescricao(resultSet.getString(2));
		return tu;
	}
}
