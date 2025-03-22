package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.CapacitiesApi;
import fr.archimon.ArchiMon.domain.mapper.CapacityToCapacityDTOMapper;
import fr.archimon.ArchiMon.infra.catalog.CapacityCatalog;
import fr.archimon.ArchiMon.model.CapacityDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class CapacityController implements CapacitiesApi {

    private final CapacityToCapacityDTOMapper capacityToCapacityDTOMapper;
    private final CapacityCatalog capacityCatalog;

    @Override
    public List<CapacityDTO> getAll() {
        return capacityCatalog.getAll().stream().map(capacityToCapacityDTOMapper).toList();
    }
}
