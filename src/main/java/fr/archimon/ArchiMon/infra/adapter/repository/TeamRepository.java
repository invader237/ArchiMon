package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.domain.models.Type;
import net.datafaker.providers.food.Tea;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TeamRepository extends JpaRepository<Team, Long> {
    List<Team> findAll();
    Team findById(Integer id);
}
