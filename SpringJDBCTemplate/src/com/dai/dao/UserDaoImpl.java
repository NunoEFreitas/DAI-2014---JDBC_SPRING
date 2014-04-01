package com.dai.dao;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import com.dai.domain.User;
import com.dai.jdbc.UserRowMapper;

public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource dataSource;

	public void insertData(User user) {

		String sql = "INSERT INTO Utilizadores "
				+ "(Nome, Morada, Telefone, Telemovel, Altura, Peso, email, password, Tipo_de_utilizador) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { user.getNome(), user.getMorada(),
						user.getTelefone(), user.getTelemovel(),
                                                user.getAltura(), user.getPeso(), user.getEmail(),
                                                user.getPassword(), user.getTipo_de_utilizador()});

	}

	public List<User> getUserList() {
		List<User> userList = new ArrayList();

		String sql = "select * from Utilizadores";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		userList = jdbcTemplate.query(sql, new UserRowMapper());
		return userList;
	}

	@Override
	public void deleteData(String id) {
		String sql = "delete from Utilizadores where idUtilizadores=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}

	@Override
	public void updateData(User user) {

		String sql = "UPDATE Utilizadores set Nome = ?,Morada = ?, Telefone = ?, Telemovel = ?, Altura = ?, Peso = ?, email = ?, password = ?, Tipo_de_Utilizador = ? where idUtilizadores = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { user.getNome(), user.getMorada(),
						user.getTelefone(), user.getTelefone(), user.getAltura(),
                                                user.getPeso(), user.getEmail(), user.getPassword(), user.getTipo_de_utilizador(), user.getIdUtilizador()});

	}

	@Override
	public User getUser(String id) {
		List<User> userList = new ArrayList<User>();
		String sql = "select * from Utilizadores where idUtilizadores= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		userList = jdbcTemplate.query(sql, new UserRowMapper());
                
		return userList.get(0);
	}
        
        @Override
        public boolean verificaUser(String id){
            boolean existe;
            List<User> userList = new ArrayList<User>();
		String sql = "select * from Utilizadores where idUtilizadores= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		userList = jdbcTemplate.query(sql, new UserRowMapper());
                if(userList.isEmpty()){
                    existe=false;
                } else {
                    existe=true;
                }
            return existe;
            
            
        }

}
