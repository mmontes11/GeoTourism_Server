package com.mmontes.util.dto;

public class TIPSearchDto {

    private Long id;
    private String geom;

    public TIPSearchDto() {
    }

    public TIPSearchDto(Long id, String geom) {
        this.id = id;
        this.geom = geom;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGeom() {
        return geom;
    }

    public void setGeom(String geom) {
        this.geom = geom;
    }
}
