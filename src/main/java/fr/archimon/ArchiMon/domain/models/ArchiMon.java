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
    @Column(name = "id_archimon")
    private int id_archimon;

    @Column(name = "nom")
    private String nom;

    @Column(name = "description")
    private String description;

    @Column(name = "url_image")
    private String imageUrl;

    @Column(name = "id_type1")
    private int id_type1;

    @Column(name = "id_type2")
    private int id_type2;

    @Column(name = "pv")
    private int pv;

    @Column(name = "atk")
    private int atk;

    @Column(name = "sp_atk")
    private int sp_atk;

    @Column(name = "def")
    private int def;

    @Column(name = "sp_def")
    private int sp_def;

    @Column(name = "spd")
    private int spd;
}
