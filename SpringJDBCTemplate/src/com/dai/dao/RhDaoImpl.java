/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Rh;
import com.dai.domain.Utilizador;
import com.dai.jdbc.RhRowMapper;
import com.dai.jdbc.UtilizadorRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Samuel Costa
 */
public class RhDaoImpl implements RhDao{
      @Autowired
	DataSource dataSource;
    
      @Override
	public List<Rh> listarPagamento() {
		List<Rh> utList = new ArrayList();

		String sql = "select * from pagamento";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new RhRowMapper());
		return utList;
	}
      
      @Override
	public void inserirPagamento(Rh pag) {

		String sql = "INSERT INTO pagamento "
				+ "(idpagamento, idrecebiento, idutilizador, valorReceber, valorPagar, nomeutilizador, idescalao, data) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { pag.getIdpagamento(), pag.getIdrecebimento(), pag.getIdutilizador(),
                                               pag.getValorReceber(), pag.getValorPagar(), pag.getNomeutilizador(), pag.getIdescalao(),
                                               pag.getData(),});

	}
      
      
      @Override
	public Rh getUtilizadorRh(Integer id) {
		List<Rh> utList = new ArrayList<Rh>();
		String sql = "select * from pagamento where idutilizador= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new RhRowMapper());
                
		return utList.get(0);
	}
        


}