/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.SelecaoTreino;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class SelecaoTreinoExtractor implements ResultSetExtractor<SelecaoTreino>{
    
    public SelecaoTreino extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        SelecaoTreino st = new SelecaoTreino();
        st.setIdUtilizador(resultSet.getInt("utilizador_idutilizador_st"));
        st.setIdTreino(resultSet.getInt("treino_idtreino"));
        st.setPresenca(resultSet.getBoolean("presenca"));



        return st;
    }
    
}
