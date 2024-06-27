/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.edu.upeu.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author AEACOP
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Alumno {
    private int idalumno;
    private String nombres;
    private String apellidos;
    private String correo;
    private int telefono;
    private int idescuela;
}
