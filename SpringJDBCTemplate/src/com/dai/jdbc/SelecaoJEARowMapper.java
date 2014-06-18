/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoJEA;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class SelecaoJEARowMapper implements RowMapper<SelecaoJEA> {
    
    @Override
    public SelecaoJEA mapRow(ResultSet resultSet, int line) throws SQLException {
        SelecaoJEAExtractor sjeaExtractor = new SelecaoJEAExtractor();
        return sjeaExtractor.extractData(resultSet);
    }
    
}
