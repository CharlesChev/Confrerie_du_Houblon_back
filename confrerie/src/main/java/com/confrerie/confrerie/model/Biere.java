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

}
