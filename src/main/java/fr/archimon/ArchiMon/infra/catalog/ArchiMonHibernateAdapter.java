package fr.archimon.ArchiMon.infra.catalog;

import org.springframework.stereotype.Service;
import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonRepository;

import java.util.List;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ArchiMonHibernateAdapter implements ArchiMonCatalog {
    private final ArchiMonRepository archiMonRepository;

    @Override
    public List<ArchiMon> getAll() {
        return archiMonRepository.findAll();
    }

    @Override
    public ArchiMon create(ArchiMon archiMon) {
        return archiMonRepository.save(archiMon);
    }
        
}
