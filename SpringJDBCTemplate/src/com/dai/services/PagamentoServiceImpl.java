/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.services;

import com.dai.dao.PagamentoDao;
import com.dai.domain.Jogo;
import com.dai.domain.Pagamento;
import com.dai.domain.Perfil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Samuel Costa
 */
public class PagamentoServiceImpl implements PagamentoService{
      @Autowired
	PagamentoDao pagamentodao;
    
    
    
    @Override
	public List<Pagamento> listarPagamento() {
		return pagamentodao.listarPagamento();
	}
    
    @Override
	public void inserirPagamento(Pagamento pagamento) {
                pagamentodao.inserirPagamento(pagamento);
	}

}