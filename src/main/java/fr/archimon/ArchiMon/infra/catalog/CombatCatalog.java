package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Combat;
import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CombatCatalog {
    Combat save(Combat combat);
    List<Combat> getAll();
    Combat getById(long id);
}
