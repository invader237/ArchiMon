package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

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

    @Column(name = "url_image")
    private String urlImage;

    @ManyToMany
    @JoinTable(
            name = "type_archimon",
            joinColumns = @JoinColumn(name = "archimon_id"),
            inverseJoinColumns = @JoinColumn(name = "type_id")
    )
    private List<Type> types = new ArrayList<>();

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

    @ManyToMany
    @JoinTable(
            name = "pokemon_capacity",
            joinColumns = @JoinColumn(name = "archimon_id"),
            inverseJoinColumns = @JoinColumn(name = "capacity_id")
    )
    private List<Capacity> capacities = new ArrayList<>();

    @ManyToMany
    @JoinTable(
            name = "archimon_team",
            joinColumns = @JoinColumn(name = "archimon_id"),
            inverseJoinColumns = @JoinColumn(name = "team_id")
    )
    private List<Team> teams = new ArrayList<>();

    public void setCapacity(List<Capacity> capacities) {
        this.capacities = capacities;
        for (Capacity capacity : capacities) {
            capacity.getArchiMons().add(this);
        }
    }

}
