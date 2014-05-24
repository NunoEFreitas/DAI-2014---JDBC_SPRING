
package com.dai.services;

import com.dai.dao.RhDao;
import com.dai.dao.PerfilDao;
import com.dai.domain.Rh;
import com.dai.domain.Perfil;
import com.dai.domain.Utilizador;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Samuel Costa
 */
public interface RhService {
   
     
    public List<Rh> listarPagamento();
    
     public void inserirPagamento(Rh pag);
     
     public Rh getUtilizadorRh(Integer id);
    
}