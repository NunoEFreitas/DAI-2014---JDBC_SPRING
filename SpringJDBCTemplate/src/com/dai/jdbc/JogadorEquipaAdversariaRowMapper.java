/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.JogadorEquipaAdversaria;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class JogadorEquipaAdversariaRowMapper implements RowMapper<JogadorEquipaAdversaria> {
    
    @Override
    public JogadorEquipaAdversaria mapRow(ResultSet resultSet, int line) throws SQLException {
        JogadorEquipaAdversariaExtractor jeaExtractor = new JogadorEquipaAdversariaExtractor();
        return jeaExtractor.extractData(resultSet);
    }
    
}
