/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidadesdominio;

import Repositorios.CalificacionRepositorio;

/**
 *
 * @author Sebastian
 */
public class Calificacion {

    private int id_usuario;
    private int calificacionItem1;
    private int calificacionItem2;
    private int calificacionItem3;
    private int calificacionItem4;
    private int calificacionItem5;
    private String comentarios;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getCalificacionItem1() {
        return calificacionItem1;
    }

    public void setCalificacionItem1(int calificacionItem1) {
        this.calificacionItem1 = calificacionItem1;
    }

    public int getCalificacionItem2() {
        return calificacionItem2;
    }

    public void setCalificacionItem2(int calificacionItem2) {
        this.calificacionItem2 = calificacionItem2;
    }

    public int getCalificacionItem3() {
        return calificacionItem3;
    }

    public void setCalificacionItem3(int calificacionItem3) {
        this.calificacionItem3 = calificacionItem3;
    }

    public int getCalificacionItem4() {
        return calificacionItem4;
    }

    public void setCalificacionItem4(int calificacionItem4) {
        this.calificacionItem4 = calificacionItem4;
    }

    public int getCalificacionItem5() {
        return calificacionItem5;
    }

    public void setCalificacionItem5(int calificacionItem5) {
        this.calificacionItem5 = calificacionItem5;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public String calificar() {
        try {
            CalificacionRepositorio califRep = new CalificacionRepositorio();
            califRep.IngresarCalificacion(0, calificacionItem1, calificacionItem2, calificacionItem3, calificacionItem4, calificacionItem5, comentarios);
        } catch (Exception ex) {
        }

        if ((calificacionItem1 + calificacionItem2 + calificacionItem3 + calificacionItem4 + calificacionItem5) < 15) {
            return "Ofrecemos disculpas por no haber estado a la altura de sus exigencias, un descuento del 20% se cargará a su cuenta";
        } else {
            return "Muchas gracias por sus comentarios";
        }
    }

    public float ObtenerCalificacionPromedio() {
        float promedio = 0;

        return promedio;
    }
}
