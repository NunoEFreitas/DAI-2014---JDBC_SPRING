package com.dai.jdbc;

import com.dai.domain.Utilizador;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

public class UtilizadorExtractor implements ResultSetExtractor<Utilizador> {

	public Utilizador extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		Utilizador utilizador = new Utilizador();
		
                utilizador.setIdUtilizador(resultSet.getInt("idUtilizador"));
                utilizador.setNome(resultSet.getString("nomeUtilizador"));
                utilizador.setPassword(resultSet.getString("password"));
                utilizador.setDataNascimento(resultSet.getString("dataNascimento"));
                utilizador.setMorada(resultSet.getString("morada"));
                utilizador.setSexo(resultSet.getString("sexo"));
                utilizador.setTelefone(resultSet.getInt("telefone"));
                utilizador.setEmail(resultSet.getString("email"));
                utilizador.setAltura(resultSet.getInt("altura"));
                utilizador.setPeso(resultSet.getInt("peso"));
                utilizador.setSaltoVertical(resultSet.getInt("saltoVertical"));
                utilizador.setVelocidadeDeslocamento(resultSet.getInt("velocidadeDeslocamento"));
                utilizador.setAlcanceAtaque(resultSet.getInt("alcanceAtaque"));
                utilizador.setAlcanceBloco(resultSet.getInt("alcanceBloco"));
                utilizador.setExamesClinicos(resultSet.getString("examesClinicos"));
                utilizador.setIdPerfil(resultSet.getInt("idPerfil"));
                utilizador.setIdEscalao(resultSet.getInt("idEscalao"));
                
		return utilizador;
	}

}
