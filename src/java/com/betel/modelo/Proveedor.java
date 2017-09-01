
package com.betel.modelo;

import java.util.Date;

public class Proveedor extends Persona{ //Hereda de Persona
    
    private int idProveedor;
    private String nit;
    private String razonSocial;
    private Date fechaRegistroP;
    private String estadop;

    public Proveedor(int idProveedor, String nit, String razonSocial, Date fechaRegistroP, String estadop, int idPersona, String nombres, String apellidos, String tipoDocIdentidad, String nroIdentidad, Date fechaNacimiento, String genero, String direccion, String ciudad, String cuidad, String barrio, String email, String celular, String telefono, Date fechaRegistro, String estado) {
        super(idPersona, nombres, apellidos, tipoDocIdentidad, nroIdentidad, fechaNacimiento, genero, direccion, ciudad, cuidad, barrio, email, celular, telefono, fechaRegistro, estado);
        this.idProveedor = idProveedor;
        this.nit = nit;
        this.razonSocial = razonSocial;
        this.fechaRegistroP = fechaRegistroP;
        this.estadop = estadop;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public Date getFechaRegistroP() {
        return fechaRegistroP;
    }

    public void setFechaRegistroP(Date fechaRegistroP) {
        this.fechaRegistroP = fechaRegistroP;
    }

    public String getEstadop() {
        return estadop;
    }

    public void setEstadop(String estadop) {
        this.estadop = estadop;
    }

    @Override
    public String toString() {
        return "Proveedor{" + "idProveedor=" + idProveedor + ", nit=" + nit + ", razonSocial=" + razonSocial + ", fechaRegistroP=" + fechaRegistroP + ", estadop=" + estadop + '}';
    }
   
    
}
