package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.ArchiMonCombat;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ArchiMonCombatCatalog {
    ArchiMonCombat findById(int id);

    void save(ArchiMonCombat archiMonCombat);
}
