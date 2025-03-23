package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.Team;
import fr.archimon.ArchiMon.model.Identifiable;
import fr.archimon.ArchiMon.model.TeamDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface IntToIdentifiableMapper extends Function<Integer, Identifiable> {

  @Override
  Identifiable apply(Integer id);
}
