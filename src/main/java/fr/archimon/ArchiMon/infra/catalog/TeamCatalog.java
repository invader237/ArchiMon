package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Team;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TeamCatalog {
    List<Team> getAll();
    Team getById(Integer id);
    Team save(Team team);
    void delete(Integer id);
}
