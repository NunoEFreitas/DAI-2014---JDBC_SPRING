/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.jdbc;

import com.dai.domain.Perfil;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class PerfilExtractor implements ResultSetExtractor<Perfil> {

    public Perfil extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        Perfil perfil = new Perfil();
        perfil.setIdPerfil(resultSet.getInt("idPerfil"));
        perfil.setDesignacao(resultSet.getString("designacaoPerfil"));

        return perfil;
    }
}
