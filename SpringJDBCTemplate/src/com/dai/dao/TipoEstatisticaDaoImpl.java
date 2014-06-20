/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.dao;

import com.dai.domain.TipoEstatistica;
import com.dai.jdbc.TipoEstatisticaRowMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Nuno
 */
public class TipoEstatisticaDaoImpl implements TipoEstatisticaDao {
    private DataSource dataSource;
    
    public List<TipoEstatistica> listaEstatisticas(){
        
        List<TipoEstatistica> le = new ArrayList();
		JdbcTemplate template = new JdbcTemplate(dataSource);
		le = template.query("SELECT * FROM tipoEstatistica", new TipoEstatisticaRowMapper());
		return le;
        
    }
    
}
