package com.dai.dao;

import java.util.List;
import com.dai.domain.Utilizador;

public interface UtilizadorDao {
	public void inserirUtilizador(Utilizador utilizador);

	public List<Utilizador> listarUtilizador();
        public List<Utilizador> getListaUtilizador(Integer id);
        
        public List<Utilizador> listarUtilizadorPorEscalao(int idEscalao);

	public void updateUtilizador(Utilizador utilizador);

	public void apagarUtilizador(Integer id);

	public Utilizador getUtilizador(Integer id);
        
        public boolean verificaUtilizador(Integer id);
        
         public void activaUtilizador(Integer id);
         
         public void desactivaUtilizador(Integer id);
         
         public List<Utilizador> listarUTparaTreino(Integer idtreino, Integer idescalao);
         
         public List<Utilizador> listarUTparaJogo(Integer idJogo, Integer idEscalao);
         
         public List<Utilizador> listarUTselecionadosJogo(Integer idJogo, Integer idEscalao);
         
         public String getNome(Integer idUtilizador);
         

}
