/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Time;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class DetailsAction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    } 
    private Integer idpersonnage;
    private Integer idaction;
    private String sketch;
    private Integer idexpression;
    private Integer idvetement;
    private Time duree;
    private Integer idsentiment;
    private Integer idton;

    public Integer getIdpersonnage() {
        return idpersonnage;
    }

    public void setIdpersonnage(Integer idpersonnage) {
        this.idpersonnage = idpersonnage;
    }

    public Integer getIdaction() {
        return idaction;
    }

    public void setIdaction(Integer idaction) {
        this.idaction = idaction;
    }

    public String getSketch() {
        return sketch;
    }

    public void setSketch(String sketch) {
        this.sketch = sketch;
    }

    public Integer getIdexpression() {
        return idexpression;
    }

    public void setIdexpression(Integer idexpression) {
        this.idexpression = idexpression;
    }

    public Integer getIdvetement() {
        return idvetement;
    }

    public void setIdvetement(Integer idvetement) {
        this.idvetement = idvetement;
    }

    public Time getDuree() {
        return duree;
    }

    public void setDuree(Time duree) {
        this.duree = duree;
    }

    public Integer getIdsentiment() {
        return idsentiment;
    }

    public void setIdsentiment(Integer idsentiment) {
        this.idsentiment = idsentiment;
    }

    public Integer getIdton() {
        return idton;
    }

    public void setIdton(Integer idton) {
        this.idton = idton;
    }
}
