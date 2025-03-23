package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.Combat;
import fr.archimon.ArchiMon.model.CombatDTO;
import fr.archimon.ArchiMon.model.Identifiable;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface CombatToCombatDTOMapper extends Function<Combat, CombatDTO> {

  @Override
  CombatDTO apply(Combat combat);
}
