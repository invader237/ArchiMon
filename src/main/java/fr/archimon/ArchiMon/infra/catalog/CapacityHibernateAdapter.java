package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.infra.adapter.repository.CapacityRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.TypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CapacityHibernateAdapter implements CapacityCatalog {
    private final CapacityRepository capacityRepository;

    @Override
    public List<Capacity> getAll() {
        return capacityRepository.findAll();
    }

    @Override
    public Capacity getById(Integer id) {
        return capacityRepository.getReferenceById(Long.valueOf(id));
    }
}
