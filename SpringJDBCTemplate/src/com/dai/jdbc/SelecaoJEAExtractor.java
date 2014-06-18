/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoJEA;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class SelecaoJEAExtractor implements ResultSetExtractor<SelecaoJEA>{
    
    public SelecaoJEA extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        SelecaoJEA sjea = new SelecaoJEA();
        sjea.setIdJEA(resultSet.getInt("idJogadorEquipaAdversaria_s"));
        sjea.setIdJogo(resultSet.getInt("idJogo_s"));
        sjea.setNome(resultSet.getString("nomeJEA"));

        return sjea;
    }
    
}
