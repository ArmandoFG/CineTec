package tarea1.tec.cinetec.model;

public class Tabla_Factura {
    private int clave;
    private int consecutivo;
    private int fact_id;
    private String detalle;
    private String fecha;
    private int cedula_cliente;

    public int getClave() {
        return clave;
    }

    public void setClave(int clave) {
        this.clave = clave;
    }

    public int getConsecutivo() {
        return consecutivo;
    }

    public void setConsecutivo(int consecutivo) {
        this.consecutivo = consecutivo;
    }

    public int getFact_id() {
        return fact_id;
    }

    public void setFact_id(int fact_id) {
        this.fact_id = fact_id;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getCedula_cliente() {
        return cedula_cliente;
    }

    public void setCedula_cliente(int cedula_cliente) {
        this.cedula_cliente = cedula_cliente;
    }
}
