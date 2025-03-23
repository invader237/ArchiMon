package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "type_multiplicateur")
public class TypeMultiplicateur {

    @EmbeddedId
    private TypeMultiplicateurId id;

    @ManyToOne
    @MapsId("typeOffensif")
    @JoinColumn(name = "type_off")
    private Type typeOffensif;

    @ManyToOne
    @MapsId("typeDefensif")
    @JoinColumn(name = "type_def")
    private Type typeDefensif;

    @Column(name = "multiplicateur")
    private double multiplicateur;
}
