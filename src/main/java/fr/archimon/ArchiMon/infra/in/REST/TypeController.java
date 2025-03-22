package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.TypesApi;
import fr.archimon.ArchiMon.domain.mapper.TypeToTypeDTOMapper;
import fr.archimon.ArchiMon.infra.catalog.TypeCatalog;
import fr.archimon.ArchiMon.model.TypesDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class TypeController implements TypesApi {

    private final TypeCatalog typeCatalog;
    private final TypeToTypeDTOMapper typeToTypeDTOMapper;

    @Override
    public List<TypesDTO> getAll() {
        return typeCatalog.getAll()
                .stream()
                .map(typeToTypeDTOMapper)
                .toList();
    }
}
