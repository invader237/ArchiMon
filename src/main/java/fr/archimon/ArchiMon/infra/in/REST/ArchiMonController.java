package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import fr.archimon.ArchiMon.infra.catalog.ArchiMonCatalog;
import fr.archimon.ArchiMon.model.ArchiMonDTO;

@RestController
@RequestMapping("/api/pokemon")
public class ArchiMonController {

    private final ArchiMonCatalog archiMonCatalog;

    private ArchiMonController(ArchiMonCatalog archiMonCatalog) {
        this.archiMonCatalog = archiMonCatalog;
    }

    @GetMapping
    public List<ArchiMonDTO> getAllArchiMons() {
        return archiMonCatalog.getAll();

    }
}
