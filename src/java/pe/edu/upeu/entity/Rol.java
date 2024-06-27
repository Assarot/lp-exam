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
public class Rol {
    private int idrol;
    private String nombre;
    private int estado;
}
