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

    @Column(name = "pv")
    private int pv;

    @Column(name = "attaque")
    private int attaque;

    @Column(name = "defense")
    private int defense;

    @Column(name = "vitesse")
    private int vitesse;

    @Column(name = "image_url")
    private String imageUrl;
}
