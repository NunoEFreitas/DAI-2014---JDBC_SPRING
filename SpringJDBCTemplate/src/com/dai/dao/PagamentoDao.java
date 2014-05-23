/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.dao;

import com.dai.domain.Pagamento;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import java.util.List;

/**
 *
 * @author Samuel Costa
 */
public interface PagamentoDao {
    public List<Pagamento> listarPagamento();
    
    public void inserirPagamento(Pagamento pag);
}

