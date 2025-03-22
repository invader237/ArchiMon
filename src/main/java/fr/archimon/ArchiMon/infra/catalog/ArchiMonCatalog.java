package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public interface ArchiMonCatalog {
    List<ArchiMon> getAll();
    ArchiMon create(ArchiMon archiMon);
    ArchiMon getById(Integer id);
    ArchiMon save(ArchiMon archiMon);
    List<ArchiMon> findAllByIdIn(List<Integer> ids);

}
