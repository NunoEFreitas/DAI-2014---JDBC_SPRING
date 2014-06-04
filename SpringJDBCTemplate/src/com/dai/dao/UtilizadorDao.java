package com.dai.dao;

import java.util.List;
import com.dai.domain.Utilizador;

public interface UtilizadorDao {
	public void inserirUtilizador(Utilizador utilizador);

	public List<Utilizador> listarUtilizador();

	public void updateUtilizador(Utilizador utilizador);

	public void apagarUtilizador(Integer id);

	public Utilizador getUtilizador(Integer id);
        
        public boolean verificaUtilizador(Integer id);
        
         public void activaUtilizador(Integer id);
         
         public void desactivaUtilizador(Integer id);

}
