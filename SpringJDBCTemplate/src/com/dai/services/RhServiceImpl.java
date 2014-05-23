/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.services;

import com.dai.dao.RhDao;
import com.dai.domain.Jogo;
import com.dai.domain.Rh;
import com.dai.domain.Perfil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Samuel Costa
 */
public class RhServiceImpl implements RhService{
      @Autowired
	RhDao pagamentodao;
    
    
    
    @Override
	public List<Rh> listarPagamento() {
		return pagamentodao.listarPagamento();
	}
    
    @Override
	public void inserirPagamento(Rh pagamento) {
                pagamentodao.inserirPagamento(pagamento);
	}

}