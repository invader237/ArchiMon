package fr.archimon.ArchiMon.domain.service;

import org.springframework.stereotype.Service;

@Service
public interface ImageGenerationService {
    String generateImageUrl(String name, int attack, int defense, int speed, String description, String keyTraits);
}
