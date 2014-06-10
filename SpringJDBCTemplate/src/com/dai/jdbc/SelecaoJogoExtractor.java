/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoJogo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class SelecaoJogoExtractor implements ResultSetExtractor<SelecaoJogo>{
    
    public SelecaoJogo extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        SelecaoJogo sl = new SelecaoJogo();
        sl.setIdJogo(resultSet.getInt("jogo_idjogo"));
        sl.setIdUtilizador(resultSet.getInt("utilizador_idutilizador"));
        


        return sl;
    }
    
}
