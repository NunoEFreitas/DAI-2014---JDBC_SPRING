/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Escalao;
import com.dai.domain.Perfil;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Nuno
 */
public class EscalaoRowMapper implements RowMapper<Escalao> {

    @Override
    public Escalao mapRow(ResultSet resultSet, int line) throws SQLException {
        EscalaoExtractor escalaoExtractor = new EscalaoExtractor();
        return escalaoExtractor.extractData(resultSet);
    }
}

