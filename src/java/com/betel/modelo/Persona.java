
package com.betel.modelo;

import java.util.Date;

public class Persona {
    private int idPersona;
    private String nombres;
    private String apellidos;
    private String tipoDocIdentidad;
    private String nroIdentidad;
    private Date fechaNacimiento;
    private String genero;
    private String direccion;
    private String ciudad;
    private String cuidad;
    private String barrio;
    private String email;
    private String celular;
    private String telefono;
    private Date fechaRegistro;
    private String estado;

    public Persona(int idPersona, String nombres, String apellidos, String tipoDocIdentidad, String nroIdentidad, Date fechaNacimiento, String genero, String direccion, String ciudad, String cuidad, String barrio, String email, String celular, String telefono, Date fechaRegistro, String estado) {
        this.idPersona = idPersona;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.tipoDocIdentidad = tipoDocIdentidad;
        this.nroIdentidad = nroIdentidad;
        this.fechaNacimiento = fechaNacimiento;
        this.genero = genero;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.cuidad = cuidad;
        this.barrio = barrio;
        this.email = email;
        this.celular = celular;
        this.telefono = telefono;
        this.fechaRegistro = fechaRegistro;
        this.estado = estado;
    }

    public Persona() {
    }
    
    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTipoDocIdentidad() {
        return tipoDocIdentidad;
    }

    public void setTipoDocIdentidad(String tipoDocIdentidad) {
        this.tipoDocIdentidad = tipoDocIdentidad;
    }

    public String getNroIdentidad() {
        return nroIdentidad;
    }

    public void setNroIdentidad(String nroIdentidad) {
        this.nroIdentidad = nroIdentidad;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCuidad() {
        return cuidad;
    }

    public void setCuidad(String cuidad) {
        this.cuidad = cuidad;
    }

    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "Persona{" + "idPersona=" + idPersona + ", nombres=" + nombres + ", apellidos=" + apellidos + ", tipoDocIdentidad=" + tipoDocIdentidad + ", nroIdentidad=" + nroIdentidad + ", fechaNacimiento=" + fechaNacimiento + ", genero=" + genero + ", direccion=" + direccion + ", ciudad=" + ciudad + ", cuidad=" + cuidad + ", barrio=" + barrio + ", email=" + email + ", celular=" + celular + ", telefono=" + telefono + ", fechaRegistro=" + fechaRegistro + ", estado=" + estado + '}';
    }
    
    
    
}
