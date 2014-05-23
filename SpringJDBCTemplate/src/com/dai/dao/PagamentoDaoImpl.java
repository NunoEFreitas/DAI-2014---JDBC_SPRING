/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Pagamento;
import com.dai.domain.Utilizador;
import com.dai.jdbc.PagamentoRowMapper;
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
public class PagamentoDaoImpl implements PagamentoDao{
      @Autowired
	DataSource dataSource;
    
      @Override
	public List<Pagamento> listarPagamento() {
		List<Pagamento> utList = new ArrayList();

		String sql = "select * from pagamento";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new PagamentoRowMapper());
		return utList;
	}
      
      @Override
	public void inserirPagamento(Pagamento pag) {

		String sql = "INSERT INTO pagamento "
				+ "(idpagamento, idrecebiento, idutilizador, valorReceber, valorPagar, nomeutilizador, idescalao, data) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { pag.getIdpagamento(), pag.getIdrecebimento(), pag.getIdutilizador(),
                                               pag.getValorReceber(), pag.getValorPagar(), pag.getNomeutilizador(), pag.getIdescalao(),
                                               pag.getData(),});

	}


}