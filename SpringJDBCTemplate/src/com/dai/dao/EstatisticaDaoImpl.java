/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Estatistica;
import com.dai.jdbc.EstatisticaRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class EstatisticaDaoImpl implements EstatisticaDao {

    @Autowired
    DataSource dataSource;

    @Override
    public void adicionaEstatistica(Estatistica est) {

        String sql = "INSERT INTO estatistica "
                + "( idutilizador_est, idjogo_est, tiposEstatistica_idtiposEstatistica, "
                + "idJEA_est, classificacao, origem, destino, rotacaoPropria, rotacaoEA) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        JdbcTemplate template = new JdbcTemplate(dataSource);

        template.update(
                sql,
                new Object[]{est.getIdUtilizador(), est.getIdJogo(), est.getIdTipoEstatistica(),
                    est.getIdJea(), est.getClassificacao(), est.getOrigem(), est.getDestino(),
                    est.getRotacaoPropria(), est.getRotacaoEA()});

    }
    
    @Override
     public void adicionaEstatisticaSJEA(Estatistica est){
         
         String sql = "INSERT INTO estatistica "
                + "( idutilizador_est, idjogo_est, tiposEstatistica_idtiposEstatistica, "
                + " classificacao, origem, destino, rotacaoPropria, rotacaoEA) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        JdbcTemplate template = new JdbcTemplate(dataSource);

        template.update(
                sql,
                new Object[]{est.getIdUtilizador(), est.getIdJogo(), est.getIdTipoEstatistica(),
                     est.getClassificacao(), est.getOrigem(), est.getDestino(),
                    est.getRotacaoPropria(), est.getRotacaoEA()});
         
     }
     
     @Override
     public void adicionaEstatisticaSJ(Estatistica est){
         
         String sql = "INSERT INTO estatistica "
                + "( idjogo_est, tiposEstatistica_idtiposEstatistica, "
                + "idJEA_est, classificacao, origem, destino, rotacaoPropria, rotacaoEA) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        JdbcTemplate template = new JdbcTemplate(dataSource);

        template.update(
                sql,
                new Object[]{est.getIdJogo(), est.getIdTipoEstatistica(),
                    est.getIdJea(), est.getClassificacao(), est.getOrigem(), est.getDestino(),
                    est.getRotacaoPropria(), est.getRotacaoEA()});
         
     }

    @Override
    public void removeEstatistica(Integer idEst) {
        String sql = "delete from estatistica idEstatistica =" + idEst;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);

    }

    @Override
    public List<Estatistica> listaServicosP(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 1 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaServicosA(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 2 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaAtaquesA(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 4 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaAtaquesP(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 3 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaBlocosP(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 7 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaDefesasP(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 5 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }

    @Override
    public List<Estatistica> listaDefesasA(Integer idJogo) {
        List<Estatistica> lest = new ArrayList();

        String sql = "select * from estatistica where tiposEstatistica_idtiposEstatistica = 6 and idjogo_est=" + idJogo;
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        lest = jdbcTemplate.query(sql, new EstatisticaRowMapper());
        return lest;
    }
    /*
     public List<Estatistica> listaEstatisticas(){
        
     }
    
     public List<Estatistica> listaEstatisticasPorJogador(Integer idJogador){
        
     }
    
     public List<Estatistica> listaEstatisticasPorJogo(Integer idJogo){
        
     }
    
     public List<Estatistica> listaEstatisticasPorEA(Integer idEa){
        
     }
    
     public List<Estatistica> listaEstatisticasPorTipoJogo(Integer idEst, Integer idJogo){
        
     }
    
     public List<Estatistica> listaEstatisticasPorTipoJogoJogador(Integer idEst, Integer idJogo, Integer idJogador){
        
     }
     */
}
