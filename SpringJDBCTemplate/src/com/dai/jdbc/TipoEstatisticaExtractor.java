/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.TipoEstatistica;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class TipoEstatisticaExtractor implements ResultSetExtractor<TipoEstatistica> {

    public TipoEstatistica extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        TipoEstatistica te = new TipoEstatistica();
        te.setIdTipoEstatistica(resultSet.getInt("idTiposEstatistica"));
        te.setDesignacaoEstatistica(resultSet.getString("designacaoEstatistica"));

        return te;
    }
}
