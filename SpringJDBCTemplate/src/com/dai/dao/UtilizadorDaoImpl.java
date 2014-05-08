package com.dai.dao;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import com.dai.domain.Utilizador;
import com.dai.jdbc.UtilizadorRowMapper;

public class UtilizadorDaoImpl implements UtilizadorDao {

	@Autowired
	DataSource dataSource;

        @Override
	public void inserirUtilizador(Utilizador ut) {

		String sql = "INSERT INTO utilizador "
				+ "(nomeUtilizador, password, dataNascimento, morada, sexo, telefone, email, altura, peso, saltoVertical, velocidadeDeslocamento, alcanceAtaque, alcanceBloco, examesClinicos, idPerfil, idEscalao) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);
                
                
                
		template.update(
				sql,
				new Object[] { ut.getNome(), ut.getPassword(), ut.getDataNascimento(),
                                               ut.getMorada(), ut.getSexo(), ut.getTelefone(), ut.getEmail(),
                                               ut.getAltura(), ut.getPeso(), ut.getSaltoVertical(), ut.getVelocidadeDeslocamento(),
                                               ut.getAlcanceAtaque(), ut.getAlcanceBloco(), ut.getExamesClinicos(),
                                               ut.getIdPerfil(), ut.getIdEscalao()});

	}

        @Override
	public List<Utilizador> listarUtilizador() {
		List<Utilizador> utList = new ArrayList();

		String sql = "select * from utilizador where idPerfil=4";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new UtilizadorRowMapper());
		return utList;
	}

	@Override
	public void apagarUtilizador(Integer id) {
		String sql = "delete from utilizador where idUtilizador=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}

	@Override
	public void updateUtilizador(Utilizador ut) {
                
                String sql = "UPDATE utilizador set nomeUtilizador = ?, password = ?, dataNascimento = ?, morada = ?, sexo = ?, telefone = ?, email = ?, altura = ?, peso = ?, saltoVertical = ?, velocidadeDeslocamento = ?, alcanceAtaque = ?, alcanceBloco = ?, examesClinicos = ?, idPerfil = ?, idEscalao = ? where idUtilizador = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] {  ut.getNome(), ut.getPassword(), ut.getDataNascimento(),
                                               ut.getMorada(), ut.getSexo(), ut.getTelefone(), ut.getEmail(),
                                               ut.getAltura(), ut.getPeso(), ut.getSaltoVertical(), ut.getVelocidadeDeslocamento(),
                                               ut.getAlcanceAtaque(), ut.getAlcanceBloco(), ut.getExamesClinicos(),
                                               ut.getIdPerfil(), ut.getIdEscalao(), ut.getIdUtilizador()});

	}

	@Override
	public Utilizador getUtilizador(Integer id) {
		List<Utilizador> utList = new ArrayList<Utilizador>();
		String sql = "select * from utilizador where idUtilizador= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new UtilizadorRowMapper());
                
		return utList.get(0);
	}
        
        @Override
        public boolean verificaUtilizador(Integer id){
            boolean existe;
            List<Utilizador> utList = new ArrayList<Utilizador>();
		String sql = "select * from utilizador where idUtilizador= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		utList = jdbcTemplate.query(sql, new UtilizadorRowMapper());
                if(utList.isEmpty()){
                    existe=false;
                } else {
                    existe=true;
                }
            return existe;
            
            
        }

}
