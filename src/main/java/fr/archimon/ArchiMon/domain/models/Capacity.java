package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import net.datafaker.providers.entertainment.Pokemon;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "capacites")
@Getter
@Setter
public class Capacity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nom")
    private String nom;

    @Column(name = "description")
    private String description;

    @Column(name = "puissance", nullable = true)
    private Double puissance;

    @Column(name = "precision", nullable = true)
    private Double precision;

    @Column(name = "effet_secondaire")
    private String effetSecondaire;

    @Column(name = "categorie")
    private String categorie;

    @ManyToOne
    @JoinColumn(name = "id_type")
    private Type type;

    @ManyToMany(mappedBy = "capacities")
    private List<ArchiMon> archiMons = new ArrayList<>();



}
