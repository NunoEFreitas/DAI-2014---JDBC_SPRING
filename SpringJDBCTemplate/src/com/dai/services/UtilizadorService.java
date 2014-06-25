package com.dai.services;

import com.dai.domain.Utilizador;
import java.util.List;

public interface UtilizadorService {
    
	public void inserirUtilizador(Utilizador ut);

	public List<Utilizador> listarUtilizador();
        
        public List<Utilizador> listarUtilizadorPorEscalao(int idEscalao);

	public void apagarUtilizador(Integer id);

	public Utilizador getUtilizador(Integer id);
        
        public List<Utilizador> getListaUtilizador(Integer id);

	public void updateUtilizador(Utilizador ut);
        
        public boolean verificaUtilizador(Integer id);
        
        public void activaUtilizador(Integer id);
        
        public void desactivaUtilizador(Integer id);
        
        public List<Utilizador> listarUTparaTreino(Integer idtreino, Integer idescalao);
        
        public List<Utilizador> listarUTparaJogo(Integer idJogo, Integer idEscalao);
        
        public List<Utilizador> listarUTselecionadosJogo(Integer idJogo, Integer idEscalao);
        
        public String getNome(Integer idUtilizador);
        
        
}
