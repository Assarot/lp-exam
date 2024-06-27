import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upeu.dao.AlumnoDao;
import pe.edu.upeu.daoimpl.AlumnoDaoImpl;
import pe.edu.upeu.entity.Alumno;

@WebServlet("/usuarios")
public class AlumnosController extends HttpServlet {
    private AlumnoDao alumnoDao = new AlumnoDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        int telefono = Integer.parseInt(request.getParameter("telefono"));
        int ep = Integer.parseInt(request.getParameter("ep"));

        Alumno alumno = new Alumno();
        alumno.setNombres(nombre);
        alumno.setApellidos(apellidos);
        alumno.setCorreo(correo);
        alumno.setTelefono(telefono);
        alumno.setIdescuela(ep);

        alumnoDao.agregarAlumno(alumno);
        
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Alumno> alumnos = alumnoDao.obtenerAlumnos();
        String json = new Gson().toJson(alumnos);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.write(json);
        out.close();
    }
}
