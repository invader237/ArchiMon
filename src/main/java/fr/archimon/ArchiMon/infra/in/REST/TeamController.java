package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.TeamApi;
import fr.archimon.ArchiMon.domain.mapper.*;
import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.infra.catalog.ArchiMonCatalog;
import fr.archimon.ArchiMon.infra.catalog.TeamCatalog;
import fr.archimon.ArchiMon.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class TeamController implements TeamApi {

    private final TeamCatalog teamCatalog;
    private final TeamToTeamDTOMapper teamToTeamDTOMapper;
    private final TeamPostDTOToTeamMapper teamPostDTOToTeamMapper;
    private final ArchiMonCatalog archiMonCatalog;


    @Override
    public TeamDTO create(TeamPostDTO teamPostDTO) {
        List<Integer> ids = teamPostDTO.getArchimons();
        List<ArchiMon> archiMons = archiMonCatalog.findAllByIdIn(ids);
        Team team = teamPostDTOToTeamMapper.apply(teamPostDTO);
        team.setArchimonsList(archiMons);
        return teamToTeamDTOMapper.apply(teamCatalog.save(team));

    }

    @Override
    public void delete(Integer id) {
        teamCatalog.delete(id);
    }

    @Override
    public List<TeamDTO> getAll() {
        return teamCatalog.getAll().stream()
                .map(teamToTeamDTOMapper)
                .toList();
    }

    @Override
    public TeamDTO getById(Integer id) {
        return teamToTeamDTOMapper.apply(teamCatalog.getById(id));
    }
}
