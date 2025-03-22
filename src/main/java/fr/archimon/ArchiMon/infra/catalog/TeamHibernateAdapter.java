package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.infra.adapter.repository.CapacityRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.TeamRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TeamHibernateAdapter implements TeamCatalog {
    private final TeamRepository teamRepository;

    @Override
    public List<Team> getAll() {
        return teamRepository.findAll();
    }

    @Override
    public Team getById(Integer id) {
        return teamRepository.getReferenceById(Long.valueOf(id));
    }

    @Override
    public Team save(Team team) {
        return teamRepository.save(team);
    }

    @Override
    public void delete(Integer id) {
        teamRepository.deleteById(Long.valueOf(id));
    }
}
