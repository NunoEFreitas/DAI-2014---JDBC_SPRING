package com.dai.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.dai.domain.User;

public class UserExtractor implements ResultSetExtractor<User> {

	public User extractData(ResultSet resultSet) throws SQLException,
			DataAccessException {
		
		User user = new User();
		
                
                user.setIdUtilizador(resultSet.getInt(1));
		user.setNome(resultSet.getString(2));
                user.setMorada(resultSet.getString(3));
                user.setTelefone(resultSet.getInt(4));
                user.setTelemovel(resultSet.getInt(5));
                user.setAltura(resultSet.getInt(6));
                user.setPeso(resultSet.getInt(7));
                user.setEmail(resultSet.getString(8));
                user.setPassword(resultSet.getString(9));
                user.setTipo_de_utilizador(resultSet.getString(10));
		return user;
	}

}
