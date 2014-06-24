/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.Jogo;
import com.dai.jdbc.JogoRowMapper;
import com.dai.jdbc.JogoRowMapperL;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class JogoDaoImpl implements JogoDao{
    
    @Autowired
	DataSource dataSource;

        @Override
	public void novoJogo(Jogo jogo) {

		String sql = "INSERT INTO jogo "
				+ "( localJogo, dataJogo, horaJogo,"
                        + " competicao_idCompeticao, equipaAdversaria_idequipaAdversaria) "
                        + "VALUES (?, ?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { jogo.getLocal(), jogo.getData(),
                                    jogo.getHora(), 
                                    jogo.getIdCompeticao(), jogo.getIdEquipaAdversaria()});

	}
        
        
           @Override
         public List<Jogo> listaHistoricoAtleta(Integer idUtilizador){
           
           List<Jogo> utList = new ArrayList();

		String sql = "select * from jogo where resultadoCasa is not null and resultadoFora is not null and "
                        + "idJogo in (select jogo_idjogo from"
                        + " selecaoJogo where utilizador_idutilizador=" + idUtilizador +")";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapper());
		return utList;
           
           
         
           }
        
        
        
        
        
        
        
        
        
        
        
        
        
        @Override
	public List<Jogo> listaJogosPendentes() {
		List<Jogo> utList = new ArrayList();

		String sql = "select * from jogo where resultadoCasa is null and resultadoFora is null";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapper());
		return utList;
	}
        
        @Override
        public void alteraJogo(Jogo jogo){
            String sql = "UPDATE jogo set localJogo = ?, dataJogo = ?, horaJogo = ?,"
                    + " competicao_idCompeticao = ?, equipaAdversaria_idequipaAdversaria = ? where idJogo = ?";
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { jogo.getLocal(), jogo.getData(), jogo.getHora(),
                                jogo.getIdCompeticao(), jogo.getIdEquipaAdversaria(), jogo.getIdJogo()});
            
        
            
        }
    /*
        @Override
        public List<Jogo> listaJogosPendentesEscalao(Integer idEscalao){
                List<Jogo> utList = new ArrayList();
                String sql = "SELECT * FROM jogo where resultadoJogo is null "
                        + "and competicao_idCompeticao IN (select idCompeticao "
                        + "from competicao where escalao_idEscalao_c =" + idEscalao +  ")";
                JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapper());
		return utList;
        }
    */
        
         @Override
        public List<Jogo> listaJogosPendentesEscalao(Integer idEscalao){
                List<Jogo> utList = new ArrayList();
                String sql = "select jogo.idJogo, jogo.localJogo, jogo.dataJogo, jogo.resultadoCasa ,jogo.resultadoFora, "
                        + "jogo.horaJogo, jogo.competicao_idCompeticao, competicao.designacaoCompeticao, "
                        + "jogo.equipaAdversaria_idequipaAdversaria, equipaAdversaria.nomeEquipaAdversaria  "
                        + "from jogo inner join competicao on jogo.competicao_idCompeticao = competicao.idCompeticao " +
                        "inner join equipaAdversaria on jogo.equipaAdversaria_idequipaAdversaria = equipaAdversaria.idEquipaAdversaria "
                        + "where resultadoCasa is null and resultadoFora is null and competicao_idCompeticao IN (select idCompeticao from competicao where escalao_idEscalao_c = " + idEscalao +  ")";
                JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapperL());
		return utList;
        }
        
        @Override
        public void apagaJogo(Integer idJogo){
            
            String sql ="delete from estatisticas where idjogo_est =" + idJogo;
            String sql2 = "delete from selecaoJogo where jogo_idjogo =" + idJogo;
           
            
            String sql3 = "delete from jogo where idJogo =" + idJogo;
            
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
                jdbcTemplate.update(sql);
		jdbcTemplate.update(sql2);
                jdbcTemplate.update(sql3);
            
        }
        
        @Override
        public List<Jogo> listaJogosPassados(Integer idEscalao){
            
            List<Jogo> utList = new ArrayList();

		String sql = "SELECT * FROM jogo where resultadoCasa is not null resultadoFora is not null and "
                        + "competicao_idCompeticao IN (select idCompeticao from "
                        + "competicao where escalao_idEscalao_c =" + idEscalao +  ")";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapper());
		return utList;
            
                 
        }
        
        @Override
        public List<Jogo> listaJogosSelecionado(Integer idUtilizador){
            
            List<Jogo> utList = new ArrayList();

		String sql = "select * from jogo where resultadoCasa is null and resultadoFora is"
                        + " null and idJogo in (select jogo_idjogo from "
                        + "selecaoJogo where utilizador_idutilizador = "+ idUtilizador +")";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new JogoRowMapper());
		return utList;
        }
        
        @Override
        public List<Jogo> getJogo(Integer idJogo){
                List<Jogo> jogoList = new ArrayList();

		String sql = "select * from jogo where idJogo = " + idJogo;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jogoList= jdbcTemplate.query(sql, new JogoRowMapper());
		return jogoList;
        }
      
        
}
