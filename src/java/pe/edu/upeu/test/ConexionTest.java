
package pe.edu.upeu.test;

import pe.edu.upeu.config.Conexion;

/**
 *
 * @author AEACOP
 */
public class ConexionTest {
    public static void main(String[] args) {
        if (Conexion.getConexion()!=null){
            System.out.println("Conectado");
        } else {
            System.out.println("Error");
        }
    }
}
