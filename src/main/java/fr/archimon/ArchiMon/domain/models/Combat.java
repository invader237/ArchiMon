package fr.archimon.ArchiMon.domain.models;

import fr.archimon.ArchiMon.domain.models.enums.StateCombat;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "combat")
@Getter
@Setter
public class Combat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "first_team")
    private Team firstTeam;

    @ManyToOne
    @JoinColumn(name = "second_team")
    private Team secondTeam;

    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date = new Date();

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private StateCombat status = StateCombat.CREATED;

    @Column(name = "winner")
    private int winner;

    @Column(name = "team_turn")
    private int teamTurn;

}
