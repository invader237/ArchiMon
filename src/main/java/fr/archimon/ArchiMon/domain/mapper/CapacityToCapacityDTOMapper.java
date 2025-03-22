package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.model.ArchiMonDTO;
import fr.archimon.ArchiMon.model.CapacityDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface CapacityToCapacityDTOMapper extends Function<Capacity, CapacityDTO> {

  @Override
  CapacityDTO apply(Capacity archimon);
}
