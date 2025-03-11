package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Entity
@Table(name = "pokemon")
@Getter
@Setter
public class ArchiMon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pokemon_id")
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

}
