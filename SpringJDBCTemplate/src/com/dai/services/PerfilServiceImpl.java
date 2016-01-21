/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.dai.services;

import com.dai.dao.PerfilDao;
import com.dai.domain.Perfil;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Nuno
 */
public class PerfilServiceImpl implements PerfilService {
    
        @Autowired
	PerfilDao perfildao;

	@Override
	public void inserirPerfil(Perfil perfil) {
                perfildao.inserirPerfil(perfil);
	}

	@Override
	public List<Perfil> listarPerfil() {
		return perfildao.listarPerfil();
	}

	@Override
	public void apagarPerfil(Integer id) {
		perfildao.apagarPerfil(id);
		
	}
    
}
