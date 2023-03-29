/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class SceneView {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    private Integer idauteur;
    private String descriptionscene;

    public String getDescriptionscene() {
        return descriptionscene;
    }

    public void setDescriptionscene(String descriptionscene) {
        this.descriptionscene = descriptionscene;
    }
    private Integer idfilm;

    public Integer getIdauteur() {
        return idauteur;
    }

    public void setIdauteur(Integer idauteur) {
        this.idauteur = idauteur;
    }
    public Integer getIdfilm() {
        return idfilm;
    }

    public void setIdfilm(Integer idfilm) {
        this.idfilm = idfilm;
    }
    private Integer idplateau;

    public Integer getIdplateau() {
        return idplateau;
    }

    public void setIdplateau(Integer idplateau) {
        this.idplateau = idplateau;
    }
     @Column
    private String plateau;

    public String getPlateau() {
        return plateau;
    }

    public void setPlateau(String plateau) {
        this.plateau = plateau;
    }
    private String nom;
    private String prenom;
   

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
     private Integer etatscene;
    public void setEtatscene(Integer etatscene){
        this.etatscene=etatscene;
    }
    public Integer getEtatscene(){
        return etatscene;
    }

}
