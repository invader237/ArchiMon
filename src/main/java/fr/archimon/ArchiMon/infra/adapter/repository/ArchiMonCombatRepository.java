package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.ArchiMonCombat;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ArchiMonCombatRepository extends JpaRepository<ArchiMonCombat, Long> {
    ArchiMonCombat findById(int id);

}

