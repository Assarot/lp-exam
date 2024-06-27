package pe.edu.upeu.dao;

import java.util.List;
import pe.edu.upeu.dto.UsuarioLogin;
import pe.edu.upeu.entity.Usuario;

/**
 *
 * @author AEACOP
 */
public interface UsuarioDao {
    public int createUsuario(Usuario usuario);
    public int updateUsuario(Usuario usuario);
    public int deleteUsuario(int id);
    public Usuario readUsuario(int id);
    public List<Usuario> readAllUsuario();
    public boolean buscarUsuario(String username);
    public List<UsuarioLogin> login(String username, String clave);
}
