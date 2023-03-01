/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class Action {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    private String nom;
    private Integer idplateau;
    private Integer idscene;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Integer getIdplateau() {
        return idplateau;
    }

    public void setIdplateau(Integer idplateau) {
        this.idplateau = idplateau;
    }

    public Integer getIdscene() {
        return idscene;
    }

    public void setIdscene(Integer idscene) {
        this.idscene = idscene;
    }
}
