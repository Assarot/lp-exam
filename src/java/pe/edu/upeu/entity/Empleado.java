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
public class Empleado {
    private int idempleado;
    private String nombre;
    private String apellido;
    private String correo;
    private String telefono;
    private String sexo;
}
