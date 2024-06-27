package pe.edu.upeu.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author AEACOP
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Usuario {
    private int idusuario;
    private String username;
    private String clave;
    private int estado;
    private int idempleado;
    private int idrol;
}
