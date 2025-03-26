package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import fr.archimon.ArchiMon.model.ArchiMonLightDTO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface ArchimonLightDTOToArchimonMapper extends Function<ArchiMonLightDTO, ArchiMon> {

  @Override
  @Mapping(target = "types", ignore = true)
  @Mapping(target = "capacities", ignore = true)
  ArchiMon apply(ArchiMonLightDTO archimon);
}
