/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.jdbc;

import com.dai.domain.Competicao;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Nuno
 */
public class CompeticaoExtractor implements ResultSetExtractor<Competicao> {

    public Competicao extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {
        Competicao competicao = new Competicao();
        competicao.setIdCompeticao(resultSet.getInt("idCompeticao"));
        competicao.setDesignacao(resultSet.getString("designacaoCompeticao"));


        return competicao;
    }
}
