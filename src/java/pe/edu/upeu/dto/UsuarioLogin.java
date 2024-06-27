
package pe.edu.upeu.dto;

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
public class UsuarioLogin {
    private int idusuario;
    private String username;
    private String rol;
    private String sexo;
    private String nombrep;
    private String url;
    private String icono;
}
