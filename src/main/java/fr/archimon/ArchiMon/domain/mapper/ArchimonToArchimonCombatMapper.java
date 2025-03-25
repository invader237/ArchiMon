package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.ArchiMonCombat;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface ArchimonToArchimonCombatMapper extends Function<ArchiMon, ArchiMonCombat> {

  @Override
  ArchiMonCombat apply(ArchiMon archimon);
}
