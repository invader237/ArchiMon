package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import java.util.function.Function;
import org.mapstruct.Mapper;

@Mapper( componentModel = "spring")
public interface ArchimonDTOToArchimonMapper extends Function<ArchiMonDTO, ArchiMon> {

  @Override
  ArchiMon apply(ArchiMonDTO archimon);
}
