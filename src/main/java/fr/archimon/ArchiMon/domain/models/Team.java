package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "team")
@Getter
@Setter
public class Team {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nom")
    private String nom;

    @ManyToMany(mappedBy = "teams")
    private List<ArchiMon> archimons = new ArrayList<>();

    public void setArchimonsList(List<ArchiMon> archimons) {
        this.archimons = archimons;
        for (ArchiMon archiMon : archimons) {
            archiMon.getTeams().add(this);
        }
    }

}
