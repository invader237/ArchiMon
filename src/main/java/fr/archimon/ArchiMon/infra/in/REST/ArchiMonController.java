package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.ArchimonApi;
import fr.archimon.ArchiMon.domain.mapper.ArchimonToArchimonDTOMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.stream.Collectors;

import fr.archimon.ArchiMon.infra.catalog.ArchiMonCatalog;
import fr.archimon.ArchiMon.model.ArchiMonDTO;

@RestController
@RequiredArgsConstructor
public class ArchiMonController implements ArchimonApi {

    private final ArchiMonCatalog archiMonCatalog;
    private final ArchimonToArchimonDTOMapper archimonToArchimonDTOMapper;

    @GetMapping
    public List<ArchiMonDTO> getAll(){
        return archiMonCatalog.getAll().stream().map(archimonToArchimonDTOMapper::apply).collect(Collectors.toList());
    }
}
