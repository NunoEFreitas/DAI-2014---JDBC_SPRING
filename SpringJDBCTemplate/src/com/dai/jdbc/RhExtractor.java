/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.jdbc;

import com.dai.domain.Rh;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Samuel Costa
 */
public class RhExtractor implements ResultSetExtractor<Rh> {

    public Rh extractData(ResultSet resultSet) throws SQLException,
            DataAccessException {

        Rh pagamento = new Rh();
        pagamento.setIdpagamento(resultSet.getInt("idpagamento"));
        pagamento.setIdrecebimento(resultSet.getInt("idrecebimento"));
        pagamento.setIdutilizador(resultSet.getInt("idutilizador"));
        pagamento.setValorReceber(resultSet.getInt("valorReceber"));
        pagamento.setValorPagar(resultSet.getInt("valorPagar"));
        pagamento.setNomeutilizador(resultSet.getString("nomeUtilizador"));

        pagamento.setIdescalao(resultSet.getInt("Idescalao"));
        pagamento.setData(resultSet.getString("data"));

        return pagamento;
    }
}
  