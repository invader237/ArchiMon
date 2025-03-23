package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.domain.models.TypeMultiplicateur;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TypeMultiplicateurCatalog {
    TypeMultiplicateur findByTypeDefensifAndTypeOffensif(Type typeDefensif, Type typeOffensif);
}
