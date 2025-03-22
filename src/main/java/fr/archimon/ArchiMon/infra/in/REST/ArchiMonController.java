package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.ArchimonApi;
import fr.archimon.ArchiMon.domain.mapper.*;
import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.infra.catalog.CapacityCatalog;
import fr.archimon.ArchiMon.infra.catalog.TypeCatalog;
import fr.archimon.ArchiMon.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

import fr.archimon.ArchiMon.infra.catalog.ArchiMonCatalog;

@RestController
@RequiredArgsConstructor
public class ArchiMonController implements ArchimonApi{

    private final ArchiMonCatalog archiMonCatalog;
    private final ArchimonToArchimonDTOMapper archimonToArchimonDTOMapper;
    private final ArchimonToArchimonFullDTOMapper archimonToArchimonFullDTOMapper;
    private final ArchimonLightDTOToArchimonMapper archimonLightDTOToArchimonMapper;
    private final TypeCatalog typeCatalog;
    private final CapacityToCapacityDTOMapper capacityToCapacityDTOMapper;
    private final CapacityCatalog capacityCatalog;

    public List<ArchiMonDTO> getAll(){
        return archiMonCatalog.getAll().stream().map(archimonToArchimonDTOMapper)
                .collect(Collectors.toList());
    }

    @Override
    public ArchiMonFullDTO getById(Integer id) {
        return archimonToArchimonFullDTOMapper.apply(archiMonCatalog.getById(id));
    }

    @Override
    public List<CapacityDTO> getCapacitiesForArchiMon(Integer id) {
        List<Capacity> capacities = archiMonCatalog.getById(id).getCapacities();
        return capacities.stream()
                .map(capacityToCapacityDTOMapper)
                .toList();
    }

    @Override
    public void addCapacitiesToArchiMon(Integer id, CapacityPostDTO capacityPostDTO) {
        List<Capacity> capacities = capacityPostDTO.getCapacities().stream()
                .map(capacityCatalog::getById)
                .toList();
        ArchiMon archiMon = archiMonCatalog.getById(id);

        List<Capacity> currentCapacities = archiMon.getCapacities();
        List<Capacity> newCapacities = capacities.stream()
                .filter(capacity -> !currentCapacities.contains(capacity))
                .toList();
        currentCapacities.addAll(newCapacities);

        archiMon.setCapacities(currentCapacities);
        archiMonCatalog.save(archiMon);
    }

    public ArchiMonDTO create(ArchiMonLightDTO archiMonDTO) {
        ArchiMon archiMon = archimonLightDTOToArchimonMapper.apply(archiMonDTO);
        List<Integer> typesIds = archiMonDTO.getTypes();
        List<Type>types  = typeCatalog.getAllByIds(typesIds);
        archiMon.setTypes(types);
        return archimonToArchimonDTOMapper.apply(archiMonCatalog.create(archiMon));
    }

    @Override
    public void deleteCapacityFromArchiMon(Integer id, Integer capacityId) {
        ArchiMon archiMon = archiMonCatalog.getById(id);
        List<Capacity> capacities = archiMon.getCapacities();
        capacities.removeIf(capacity -> capacity.getId() == capacityId);
        archiMon.setCapacities(capacities);
        archiMonCatalog.save(archiMon);
    }


}
