
package pe.edu.upeu.dao;

import java.util.List;
import pe.edu.upeu.entity.Privilegio;

/**
 *
 * @author AEACOP
 */
public interface PrivilegioDao {
    public int createPrivilegio(Privilegio pri);
    public int updatePrivilegio(Privilegio pri);
    public int deletePrivilegio(int id);
    public Privilegio readPrivilegio(int id);
    public List<Privilegio> readAllPrivilegio();
    public boolean buscarPrivilegio(String nombre);
}
