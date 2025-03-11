package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public interface ArchiMonCatalog {
    List<ArchiMon> getAll();
}
