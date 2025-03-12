package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import java.util.function.Function;
import org.mapstruct.Mapper;

@Mapper( componentModel = "spring")
public interface ArchimonToArchimonDTOMapper extends Function<ArchiMon, ArchiMonDTO> {

  @Override
  ArchiMonDTO apply(ArchiMon archimon);
}
