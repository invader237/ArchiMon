package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.Type;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TypeRepository extends JpaRepository<Type, Long> {
    List<Type> findAll();
    List<Type> findAllByIdIn(List<Integer> ids);
}
