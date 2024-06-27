<%-- 
    Document   : home
    Created on : 27 jun 2024, 9:18:49
    Author     : AEACOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="shortcut icon" href="assets/images/pagina.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/css/style.css"/>
    </head>
    <body class="d-flex justify-content-center align-items-center vh-100">
        <div
            class="bg-white p-5 rounded-5 text-secondary shadow"
            style="width: 25rem"
            >
            <div class="d-flex justify-content-center">
                <img
                    src="assets/images/login-icon.svg"
                    alt="login-icon"
                    style="height: 7rem"/>
            </div>
            <div class="text-center fs-1 fw-bold">Login</div>
            <form action="login" method="post">
                <div class="input-group mt-4">
                    <div class="input-group-text bg-indigo">
                        <img
                            src="assets/images/username-icon.svg"
                            alt="username-icon"
                            style="height: 1rem"
                            />
                    </div>
                    <input
                        class="form-control bg-light"
                        type="text"
                        name="username"
                        placeholder="Username"
                        />
                </div>
                <div class="input-group mt-1">
                    <div class="input-group-text bg-indigo">
                        <img
                            src="assets/images/password-icon.svg"
                            alt="password-icon"
                            style="height: 1rem"
                            />
                    </div>
                    <input
                        class="form-control bg-light"
                        type="password"
                        name="clave"
                        placeholder="Password"
                        />
                </div>
                <div class="d-flex justify-content-around mt-1">
                    <div class="d-flex align-items-center gap-1">
                        <input class="form-check-input" type="checkbox" />
                        <div class="pt-1 text-indigo" style="font-size: 0.9rem">Remember me</div>
                    </div>
                    <div class="pt-1">
                        <a
                            href="#"
                            class="text-decoration-none text-indigo fw-semibold fst-italic"
                            style="font-size: 0.9rem"
                            >Forgot your password?</a
                        >
                    </div>

                </div>
                <div class="d-grid gap-2 mt-4">
                    <button type="submit" class="btn bg-indigo text-white">Login</button>
                </div>
            </form>
            <div class="d-flex gap-1 justify-content-center mt-1">
                <div>Don't have an account?</div>
                <a href="#" class="text-decoration-none text-indigo fw-semibold"
                   >Register</a
                >
            </div>
            <div class="p-3">
                <div class="border-bottom text-center" style="height: 0.9rem">
                    <span class="bg-white px-3">or</span>
                </div>
            </div>      
        </div>

    </body>
</html>
