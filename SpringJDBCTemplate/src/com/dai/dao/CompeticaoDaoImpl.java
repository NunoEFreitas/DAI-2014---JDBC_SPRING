/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Competicao;
import com.dai.jdbc.CompeticaoRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class CompeticaoDaoImpl implements CompeticaoDao {

    @Autowired
    DataSource dataSource;

    @Override
    public void adicionaCompeticao(Competicao competicao) {

        String sql = "INSERT INTO competicao "
                + "( designacaoCompeticao, escalao_idEscalao_c) VALUES (?,?)";

        JdbcTemplate template = new JdbcTemplate(dataSource);

        template.update(
                sql,
                new Object[]{competicao.getDesignacao(), competicao.getIdEscalao()});

    }

    @Override
    public void apagaCompeticao(int idCompeticao) {

        String sql = "delete from competicao where idCompeticao =" + idCompeticao;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);

    }

    @Override
    public List<Competicao> listaCompeticao() {

        List<Competicao> slList = new ArrayList();

        String sql = "select * from competicao";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        slList = jdbcTemplate.query(sql, new CompeticaoRowMapper());
        return slList;
    }

    @Override
    public List<Competicao> listaCompeticaoPorEscalao(Integer idEscalao) {

        List<Competicao> slList = new ArrayList();

        String sql = "select * from competicao where escalao_idEscalao_c = " + idEscalao;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        slList = jdbcTemplate.query(sql, new CompeticaoRowMapper());
        return slList;
    }

}
