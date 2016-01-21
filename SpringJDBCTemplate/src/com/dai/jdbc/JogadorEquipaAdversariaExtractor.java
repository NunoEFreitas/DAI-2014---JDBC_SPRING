/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.JogadorEquipaAdversaria;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class JogadorEquipaAdversariaExtractor implements ResultSetExtractor<JogadorEquipaAdversaria> {

    public JogadorEquipaAdversaria extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        JogadorEquipaAdversaria jea = new JogadorEquipaAdversaria();
        jea.setIdJogador(resultSet.getInt("idJogadorEquipaAdversaria"));
        jea.setNome(resultSet.getString("nomeJogador"));
        jea.setPosicao(resultSet.getString("posicaoJogador"));
        jea.setIdEquipaAdversaria(resultSet.getInt("equipaAdversaria_idEquipaAdversaria"));

        return jea;
    }
}
