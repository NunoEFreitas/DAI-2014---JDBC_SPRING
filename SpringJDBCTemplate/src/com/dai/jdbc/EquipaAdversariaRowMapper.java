/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.EquipaAdversaria;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class EquipaAdversariaRowMapper implements RowMapper<EquipaAdversaria> {
    
    @Override
    public EquipaAdversaria mapRow(ResultSet resultSet, int line) throws SQLException {
        EquipaAdversariaExtractor eaExtractor = new EquipaAdversariaExtractor();
        return eaExtractor.extractData(resultSet);
    }
    
}
