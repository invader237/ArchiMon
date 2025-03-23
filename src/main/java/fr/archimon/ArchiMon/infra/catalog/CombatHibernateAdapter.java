package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Combat;
import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.infra.adapter.repository.CombatRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.TypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CombatHibernateAdapter implements CombatCatalog {
    private final CombatRepository combatRepository;

    @Override
    public Combat save(Combat combat) {
        return combatRepository.save(combat);
    }

    @Override
    public List<Combat> getAll() {
        return combatRepository.findAll();
    }

    @Override
    public Combat getById(long id) {
        return combatRepository.getReferenceById(id);
    }
}
