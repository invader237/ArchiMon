package fr.archimon.ArchiMon.application;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import fr.archimon.ArchiMon.infra.adapter.repository.ArchiMonRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ArchiMonService {
    private final ArchiMonRepository repository;

    public ArchiMonService(ArchiMonRepository repository) {
        this.repository = repository;
    }

    public List<ArchiMon> getAllArchiMons() {
        return repository.findAll();
    }

    public ArchiMon createArchiMon(ArchiMon pokemon) {
        return repository.save(pokemon);
    }
}
