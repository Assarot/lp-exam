/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.edu.upeu.test;

import com.google.gson.Gson;
import java.util.List;
import pe.edu.upeu.config.Conexion;
import pe.edu.upeu.dao.UsuarioDao;
import pe.edu.upeu.daoimpl.UsuarioDaoImpl;
import pe.edu.upeu.dto.UsuarioLogin;

/**
 *
 * @author AEACOP
 */
public class LoginTets {
    private static UsuarioDao udao = new UsuarioDaoImpl();
    private static Gson g = new Gson(); 
    public static void main(String[] args) {
        if (Conexion.getConexion()!=null)
        {
            System.out.println("conectado en oracle");
        } else {
            System.out.println("Error");
        }
        System.out.println(g.toJson(udao.login("saem", "1234")));
    }
}
