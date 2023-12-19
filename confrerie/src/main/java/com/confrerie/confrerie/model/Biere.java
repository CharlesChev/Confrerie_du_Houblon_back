package com.confrerie.confrerie.model;

import jakarta.  persistence.*;

@Entity
@Table(name = "biere")
public class Biere {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "type")
    private String type;

    @Column(name = "pay")
    private String pay;

    @Column(name = "brasserie")
    private String brasserie;

    @Column(name = "gouteur")
    private String gouteur;

    @Column(name = "description")
    private String description;

    @Column(name = "photo")
    private String photo;

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPay() {
        return this.pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getBrasserie() {
        return this.brasserie;
    }

    public void setBrasserie(String brasserie) {
        this.brasserie = brasserie;
    }

    public String getGouteur() {
        return this.gouteur;
    }

    public void setGouteur(String gouteur) {
        this.gouteur = gouteur;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Biere(String nom, String type, String pay, String brasserie, String gouteur, String description, String photo) {
        this.nom = nom;
        this.type = type;
        this.pay = pay;
        this.brasserie = brasserie;
        this.gouteur = gouteur;
        this.description = description;
        this.photo = photo;
    }

}