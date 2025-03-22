package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.model.TeamDTO;
import fr.archimon.ArchiMon.model.TeamPostDTO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface TeamPostDTOToTeamMapper extends Function<TeamPostDTO, Team> {

  @Override
  @Mapping(target = "archimons", ignore = true)
  Team apply(TeamPostDTO teamPostDTO);
}
