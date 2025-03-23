package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.domain.models.TypeMultiplicateur;
import fr.archimon.ArchiMon.infra.adapter.repository.TypeMultiplicateurRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.TypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TypeMultiplicateurHibernateAdapter implements TypeMultiplicateurCatalog {
    private final TypeMultiplicateurRepository typeRepository;

    @Override
    public TypeMultiplicateur findByTypeDefensifAndTypeOffensif(Type typeDefensif, Type typeOffensif) {
        return typeRepository.findByTypeDefensifAndTypeOffensif(typeDefensif, typeOffensif);
    }
}
