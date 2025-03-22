package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ArchiMonRepository extends JpaRepository<ArchiMon, Long> {
    List<ArchiMon> findAll();
    ArchiMon save(ArchiMon archiMon);
    List<ArchiMon> findAllByIdIn(List<Integer> ids);

}

