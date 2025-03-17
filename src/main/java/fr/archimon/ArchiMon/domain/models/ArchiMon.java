package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "archimon")
@Getter
@Setter
public class ArchiMon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "description")
    private String description;

    @Column(name = "id_type1")
    private int id_type1;

    @Column(name = "id_type2")
    private int id_type2;

    @Column(name = "pv")
    private int pv;

    @Column(name = "attaque")
    private int atk;

    @Column(name = "sp_attaque")
    private int sp_atk;

    @Column(name = "defense")
    private int def;

    @Column(name = "sp_defense")
    private int sp_def;

    @Column(name = "vitesse")
    private int vitesse;

    @Column(name = "image_url")
    private String imageUrl;
}
