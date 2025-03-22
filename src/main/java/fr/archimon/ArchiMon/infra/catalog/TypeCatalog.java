package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TypeCatalog {
    List<Type> getAll();
    List<Type> getAllByIds(List<Integer> ids);
}
