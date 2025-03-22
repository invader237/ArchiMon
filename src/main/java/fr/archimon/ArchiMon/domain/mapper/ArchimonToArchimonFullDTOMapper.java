package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import fr.archimon.ArchiMon.model.ArchiMonFullDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface ArchimonToArchimonFullDTOMapper extends Function<ArchiMon, ArchiMonFullDTO> {

  @Override
  ArchiMonFullDTO apply(ArchiMon archimon);
}
