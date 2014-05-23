
package com.dai.services;

import com.dai.dao.PagamentoDao;
import com.dai.dao.PerfilDao;
import com.dai.domain.Pagamento;
import com.dai.domain.Perfil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Samuel Costa
 */
public interface PagamentoService {
   
     
    public List<Pagamento> listarPagamento();
    
     public void inserirPagamento(Pagamento pag);
    
}