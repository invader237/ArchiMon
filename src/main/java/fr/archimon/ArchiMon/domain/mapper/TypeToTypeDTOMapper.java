package fr.archimon.ArchiMon.domain.mapper;

import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.model.TypesDTO;
import org.mapstruct.Mapper;

import java.util.function.Function;

@Mapper( componentModel = "spring")
public interface TypeToTypeDTOMapper extends Function<Type, TypesDTO> {

    @Override
    TypesDTO apply(Type type);
}
