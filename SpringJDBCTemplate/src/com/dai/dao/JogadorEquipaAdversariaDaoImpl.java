/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.JogadorEquipaAdversaria;
import com.dai.jdbc.JogadorEquipaAdversariaRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class JogadorEquipaAdversariaDaoImpl implements JogadorEquipaAdversariaDao {
    
        @Autowired
	DataSource dataSource;

        @Override
	public void adicionaJEA(JogadorEquipaAdversaria jea) {

		String sql = "INSERT INTO jogadorEquipaAdversaria "
				+ "( nomeJogador, posicaoJogador, equipaAdversaria_idEquipaAdversaria) VALUES (?,?,?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] {jea.getNome(), jea.getPosicao(), jea.getIdEquipaAdversaria() });

	}
        
        @Override
	public void apagaJEA(int idJEA) {
            
            String sql = "delete from jogadorEquipaAdversaria where idJogadorEquipaAdversaria =" + idJEA;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);
            
        }
        
        @Override
        public List<JogadorEquipaAdversaria> listaJEAporEquipa(int idEA){
            List<JogadorEquipaAdversaria> jeaList = new ArrayList();

		String sql = "select * from jogadorEquipaAdversaria where equipaAdversaria_idEquipaAdversaria= " + idEA ;

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jeaList = jdbcTemplate.query(sql, new JogadorEquipaAdversariaRowMapper());
		return jeaList;
        }
        
        @Override
        public void alteraPosicaoJEA(int idJEA, String novaPosicao){
            String sql = "UPDATE jogadorEquipaAdversaria set posicaoJogador = ? where idJogadorEquipaAdversaria = " + idJEA;
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { novaPosicao });
        }
    
        @Override
        public void alteraClubeJEA(int idJEA, int novoidEA){
        String sql = "UPDATE jogadorEquipaAdversaria set equipaAdversaria_idEquipaAdversaria = ? where idJogadorEquipaAdversaria = " + idJEA;
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { novoidEA });
        
    }
        
        @Override
        public List<JogadorEquipaAdversaria> listaJEA(){
            List<JogadorEquipaAdversaria> jeaList = new ArrayList();

		String sql = "select * from jogadorEquipaAdversaria";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jeaList = jdbcTemplate.query(sql, new JogadorEquipaAdversariaRowMapper());
		return jeaList;
        }
        
        @Override
        public List<JogadorEquipaAdversaria> listarJEAselecionadosJogo(Integer idJogo, Integer idEA){
            
        List<JogadorEquipaAdversaria> jeaList = new ArrayList<JogadorEquipaAdversaria>();
        String sql = "select * from jogadorEquipaAdversaria "
                + "where equipaAdversaria_idEquipaAdversaria = " + idEA + " and idJogadorEquipaAdversaria in(select idJogadorEquipaAdversaria_s "
                + "from selecaoJEA where idJogo_s = " + idJogo + ")";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
                jeaList = jdbcTemplate.query(sql, new JogadorEquipaAdversariaRowMapper());
                return jeaList;
        }
        
        @Override
        public List<JogadorEquipaAdversaria> listarJEAparaJogo(Integer idJogo, Integer idEA){
            
        List<JogadorEquipaAdversaria> jeaList = new ArrayList<JogadorEquipaAdversaria>();
        String sql = "select * from jogadorEquipaAdversaria "
                + "where equipaAdversaria_idEquipaAdversaria = " + idEA + " and idJogadorEquipaAdversaria not in(select idJogadorEquipaAdversaria_s "
                + "from selecaoJEA where idJogo_s = " + idJogo + ")";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
                jeaList = jdbcTemplate.query(sql, new JogadorEquipaAdversariaRowMapper());
                return jeaList;
        }
        
        @Override
        public String getNome(Integer idJea){
            List<JogadorEquipaAdversaria> jeaList = new ArrayList<JogadorEquipaAdversaria>();
            String sql = "select * from jogadorEquipaAdversaria where idJogadorEquipaAdversaria = "+ idJea ;
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
            jeaList = jdbcTemplate.query(sql, new JogadorEquipaAdversariaRowMapper());
            return jeaList.get(0).getNome();
        }
    
}
