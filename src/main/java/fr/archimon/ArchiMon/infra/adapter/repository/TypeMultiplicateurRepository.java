package fr.archimon.ArchiMon.infra.adapter.repository;

import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.domain.models.TypeMultiplicateur;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TypeMultiplicateurRepository extends JpaRepository<TypeMultiplicateur, Long> {
    TypeMultiplicateur findByTypeDefensifAndTypeOffensif(Type typeDefensif, Type typeOffensif);
}
