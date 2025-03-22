package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.Capacity;
import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CapacityRepository extends JpaRepository<Capacity, Long> {
    List<Capacity> findAll();
}
