package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Entity
@Table(name = "types")
@Getter
@Setter
public class Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "libelle")
    private String libelle;

    @Column(name = "image")
    private String image;

    @ManyToMany(mappedBy = "types")
    private List<ArchiMon> archiMons;

    @OneToMany(mappedBy = "type")
    private List<Capacity> capacities;


}
