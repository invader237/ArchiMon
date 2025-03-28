package fr.archimon.ArchiMon.infra.catalog;

import org.springframework.stereotype.Service;
import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonRepository;
import fr.archimon.ArchiMon.domain.service.ImageGenerationService;

import java.util.List;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ArchiMonHibernateAdapter implements ArchiMonCatalog {
    private final ArchiMonRepository archiMonRepository;
    private final ImageGenerationService imageGenerationService;

    @Override
    public List<ArchiMon> getAll() {
        return archiMonRepository.findAll();
    }

    @Override
    public ArchiMon create(ArchiMon archiMon) {
        String imageUrl = imageGenerationService.generateImageUrl(
                archiMon.getNom(),
                archiMon.getAtk(),
                archiMon.getDef(),
                archiMon.getSpd(),
                "a mysterious and powerful creature",
                "sharp claws, glowing eyes, ethereal aura"
        );
        archiMon.setUrlImage(imageUrl);
        archiMonRepository.save(archiMon);
        return archiMon;
    }

    @Override
    public ArchiMon getById(Integer id) {
        return archiMonRepository.getReferenceById(Long.valueOf(id));
    }

    @Override
    public ArchiMon save(ArchiMon archiMon) {
        return archiMonRepository.save(archiMon);
    }

    @Override
    public List<ArchiMon> findAllByIdIn(List<Integer> ids) {
        return archiMonRepository.findAllByIdIn(ids);
    }

}
