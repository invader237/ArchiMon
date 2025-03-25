package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.ArchiMonCombat;
import fr.archimon.ArchiMon.domain.service.ImageGenerationService;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonCombatRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ArchiMonCombatHibernateAdapter implements ArchiMonCombatCatalog {
    private final ArchiMonCombatRepository archiMonRepository;


    @Override
    public ArchiMonCombat findById(int id) {
        return archiMonRepository.findById(id);
    }

    @Override
    public void save(ArchiMonCombat archiMonCombat) {
        archiMonRepository.save(archiMonCombat);
    }
}
