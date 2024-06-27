<%-- 
    Document   : index
    Created on : 6 jun 2024, 7:18:27
    Author     : Docente
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-Control", "must-revalidate");
    response.addHeader("Cache-Control", "no-cache");
    response.addHeader("Cache-Control", "no-store");
    response.setDateHeader("Expires", 0);
    String user = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("username") == null)
    {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Ud. debe autenticarse...!"/>
</jsp:forward>
<%
} else
{
    user = (String) sesion.getAttribute("username");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="assets/images/pagina.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
            />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />

    </head>
    <body>
        <div class="p-2">
            <nav class="px-3 py-2 bg-white rounded shadow-sm">
                <i class="ri-menu-line sidebar-toggle me-3 d-block d-md-none"></i>
                <h5 class="fw-bold mb-0 me-auto">Dashboard</h5>                    
                <div class="dropdown">
                    <div class="d-flex align-items-center cursor-pointer dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="me-2 d-none d-sm-block fw-bold">
                            <%=user%>  
                        </span>
                        <c:if test="${sexo.trim() == 'MASCULINO'}">
                            <img class="navbar-profile-image" src="assets/images/user_varon.png" alt="Image">
                        </c:if>
                        <c:if test="${sexo.trim() == 'FEMENINO'}">
                            <img class="navbar-profile-image" src="assets/images/user_dama.png" alt="Image">
                        </c:if>
                    </div>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item fw-bold" href="#">${rol}</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="logout">Logout</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div>
            <div class="container mt-2">
                <div class="d-flex fs-3 align-items-center bg-success">
                    <i class="fa-solid fa-user me-2 ms-3"></i>
                    <h1>CRUD DE ALUMNO</h1>
                </div>
                <hr />
                <form>
                    <div class="mt-3">
                        <label for="nombre" class="mb-1 fw-bold">Nombres:</label>
                        <input
                            type="text"
                            class="form-control"
                            placeholder="Saem"
                            name="nombre"
                            required
                            />
                    </div>
                    <div class="mt-3">
                        <label for="apellidos" class="mb-1 fw-bold">Apellidos:</label>
                        <input
                            type="text"
                            class="form-control"
                            placeholder="Napan"
                            name="apellidos"
                            required
                            />
                    </div>
                    <div class="mt-3">
                        <label for="correo" class="mb-1 fw-bold">Correo:</label>
                        <input
                            type="email"
                            class="form-control"
                            placeholder="saem@gmail.com"
                            name="correo"
                            required
                            />
                    </div>
                    <div class="mt-3">
                        <label for="telefono" class="mb-1 fw-bold">Teléfono:</label>
                        <input
                            type="tel"
                            class="form-control"
                            placeholder="951753842"
                            name="telefono"
                            required
                            />
                    </div>
                    <div class="mt-3">
                        <label for="ep" class="mb-1 fw-bold">EP:</label>
                        <select name="ep" class="form-select" required>
                            <option value="0">Seleccione una EP</option>
                            <option value="1">Sistemas</option>
                            <option value="2">Alimentos</option>
                            <option value="3">Civil</option>
                        </select>
                    </div>
                    <div class="mt-3">
                        <button type="submit" class="btn btn-success btn-save">
                            <i class="fa-solid fa-floppy-disk me-1"></i>Guardar
                        </button>
                    </div>
                </form>
                <hr />
            </div>
            <div class="container border border-1 rounded-1 mt-3">
                <table class="table datos-tabla">
                    <thead>
                        <tr>
                            <th scope="col">NOMBRES</th>
                            <th scope="col">APELLIDOS</th>
                            <th scope="col">CORREO</th>
                            <th scope="col">TELÉFONO</th>
                            <th scope="col">EP</th>
                            <th scope="col">ACCION</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
        <script src="assets/js/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js" integrity="sha512-sW/w8s4RWTdFFSduOTGtk4isV1+190E/GghVffMA9XczdJ2MDzSzLEubKAs5h0wzgSJOQTRYyaz73L3d6RtJSg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/script.js"></script>
    </body>
</html>
<%}%>