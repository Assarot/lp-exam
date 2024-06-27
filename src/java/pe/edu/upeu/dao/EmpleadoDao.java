
package pe.edu.upeu.dao;

import java.util.List;
import pe.edu.upeu.entity.Empleado;


/**
 *
 * @author AEACOP
 */
public interface EmpleadoDao {
    public int createEmpleado(Empleado emp);
    public int updateEmpleado(Empleado emp);
    public int deleteEmpleado(int id);
    public Empleado readEmpleado(int id);
    public List<Empleado> readAllEmpleado();
    public boolean buscarEmpleado(String nombre);
}
