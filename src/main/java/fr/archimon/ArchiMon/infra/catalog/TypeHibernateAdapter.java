package fr.archimon.ArchiMon.infra.catalog;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.domain.models.Type;
import fr.archimon.ArchiMon.domain.service.ImageGenerationService;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonRepository;
import fr.archimon.ArchiMon.infra.adapter.repository.TypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TypeHibernateAdapter implements TypeCatalog {
    private final TypeRepository typeRepository;


    @Override
    public List<Type> getAll() {
        return typeRepository.findAll();
    }

    @Override
    public List<Type> getAllByIds(List<Integer> ids) {
        return typeRepository.findAllByIdIn(ids);
    }

}
