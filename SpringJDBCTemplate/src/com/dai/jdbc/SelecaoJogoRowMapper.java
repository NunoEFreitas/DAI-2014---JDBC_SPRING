/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoJogo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class SelecaoJogoRowMapper implements RowMapper<SelecaoJogo> {
    
    @Override
    public SelecaoJogo mapRow(ResultSet resultSet, int line) throws SQLException {
        SelecaoJogoExtractor slExtractor = new SelecaoJogoExtractor();
        return slExtractor.extractData(resultSet);
    }
    
}
