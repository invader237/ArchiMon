package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "archimon_combat")
@Getter
@Setter
public class ArchiMonCombat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "description")
    private String description;

    @Column(name = "url_image")
    private String urlImage;

    @Column(name = "pv")
    private int pv;

    @Column(name = "atk")
    private int atk;

    @Column(name = "sp_atk")
    private int spAtk;

    @Column(name = "def")
    private int def;

    @Column(name = "sp_def")
    private int spDef;

    @Column(name = "spd")
    private int spd;

    @ManyToOne
    @JoinColumn(name = "combat_id")
    private Combat combat;

}
