/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.TipoEstatistica;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class TipoEstatisticaRowMapper implements RowMapper<TipoEstatistica> {

    @Override
    public TipoEstatistica mapRow(ResultSet resultSet, int line) throws SQLException {
        TipoEstatisticaExtractor teExtractor = new TipoEstatisticaExtractor();
        return teExtractor.extractData(resultSet);
    }
}
