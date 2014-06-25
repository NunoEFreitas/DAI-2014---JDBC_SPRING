/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Estatistica;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class EstatisticaRowMapperL implements RowMapper<Estatistica>{
    
    @Override
	public Estatistica mapRow(ResultSet resultSet, int line) throws SQLException {
		EstatisticaExtractorL estatisticaExtractorL = new EstatisticaExtractorL();
		return estatisticaExtractorL.extractData(resultSet);
	}
    
}
