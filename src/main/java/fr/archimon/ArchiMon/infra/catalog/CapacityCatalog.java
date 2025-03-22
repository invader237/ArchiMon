package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CapacityCatalog {
    List<Capacity> getAll();
    Capacity getById(Integer integer);
}