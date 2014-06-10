/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.EquipaAdversaria;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class EquipaAdversariaExtractor implements ResultSetExtractor<EquipaAdversaria> {

    public EquipaAdversaria extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        EquipaAdversaria ea = new EquipaAdversaria();
        ea.setIdEquipaAdversaria(resultSet.getInt("idEquipaAdversaria"));
        ea.setNome(resultSet.getString("nomeEquipaAdversaria"));
        ea.setidEscalao(resultSet.getInt("escalao_idEscalao_ea"));



        return ea;
    }
}
