/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Competicao;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class CompeticaoRowMapper implements RowMapper<Competicao> {
    
    @Override
    public Competicao mapRow(ResultSet resultSet, int line) throws SQLException {
        CompeticaoExtractor competicaoExtractor = new CompeticaoExtractor();
        return competicaoExtractor.extractData(resultSet);
    }
    
}
