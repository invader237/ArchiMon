package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.ArchimonApi;
import fr.archimon.ArchiMon.domain.mapper.ArchimonToArchimonDTOMapper;
import fr.archimon.ArchiMon.domain.mapper.ArchimonDTOToArchimonMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.stream.Collectors;

import fr.archimon.ArchiMon.infra.catalog.ArchiMonCatalog;
import fr.archimon.ArchiMon.model.ArchiMonDTO;

@RestController
@RequiredArgsConstructor
public class ArchiMonController implements ArchimonApi{

    private final ArchiMonCatalog archiMonCatalog;
    private final ArchimonToArchimonDTOMapper archimonToArchimonDTOMapper;
    private final ArchimonDTOToArchimonMapper archimonDTOToArchimonMapper;

    public List<ArchiMonDTO> getAll(){
        System.out.println("getAll");
        return archiMonCatalog.getAll().stream().map(archimonToArchimonDTOMapper::apply).collect(Collectors.toList());
    }

    public ArchiMonDTO create(ArchiMonDTO archiMonDTO) {
        return archimonToArchimonDTOMapper.apply(
            archiMonCatalog.create(archimonDTOToArchimonMapper.apply(archiMonDTO))
        );
    }
}
