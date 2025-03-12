package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Entity
@Table(name = "type")
@Getter
@Setter
public class Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int idType;

    @Column(name = "libelle")
    private String libelle;

    @Column(name = "image")
    private String image;

}
