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
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class EscalaoExtractor implements ResultSetExtractor<Escalao> {

    public Escalao extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        Escalao escalao = new Escalao();
        escalao.setIdEscalao(resultSet.getInt("idEscalao"));
        escalao.setDesignacao(resultSet.getString("designacaoEscalao"));

        return escalao;
    }
}
