package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Entity
@Table(name = "fights")
@Getter
@Setter
public class Fights {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int idFight;

    @Column(name = "tour")
    private int tour;

    @Column(name = "idEvo1")
    private String idEvoE1;

    @Column(name = "idEvo2")
    private String idEvoE2;

}
