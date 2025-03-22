package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.model.TeamDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface TeamToTeamDTOMapper extends Function<Team, TeamDTO> {

  @Override
  TeamDTO apply(Team team);
}
