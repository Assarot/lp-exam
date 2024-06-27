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
public class Privilegio {
    private int idprivilegio;
    private String nombre;
    private String descripcion;
    private int estado;
}
