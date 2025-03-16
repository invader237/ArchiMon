package fr.archimon.ArchiMon.infra.out;

import fr.archimon.ArchiMon.domain.service.ImageGenerationService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.*;
import java.util.*;

@Service
public class OpenAIImageGenerationService implements ImageGenerationService {

    private final RestTemplate restTemplate = new RestTemplate();

    @Value("${openai.api.key}")
    private String openAiApiKey;

    @Override
    public String generateImageUrl(String name, int attack, int defense, int speed, String description, String keyTraits) {
        String prompt = String.format(
            "Create a highly detailed fantasy creature named %s, with %d attack, %d defense, and %d speed. " +
            "It is %s and features %s. The pose should be dynamic and battle-ready, with a background matching its habitat or element. " +
            "The art style is semi-realistic with vibrant colors and intricate details.",
            name, attack, defense, speed, description, keyTraits
        );

        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + openAiApiKey);
        headers.setContentType(MediaType.APPLICATION_JSON);

        Map<String, Object> requestBody = new HashMap<>();
        requestBody.put("model", "dall-e-3"); // ou "dall-e-2" selon ton besoin
        requestBody.put("prompt", prompt);
        requestBody.put("n", 1);
        requestBody.put("size", "1024x1024");

        HttpEntity<Map<String, Object>> requestEntity = new HttpEntity<>(requestBody, headers);

        try {
            ResponseEntity<Map> response = restTemplate.exchange(
                "https://api.openai.com/v1/images/generations",
                HttpMethod.POST,
                requestEntity,
                Map.class
            );

            if (response.getBody() != null && response.getBody().containsKey("data")) {
                List<Map<String, String>> dataList = (List<Map<String, String>>) response.getBody().get("data");
                if (!dataList.isEmpty() && dataList.get(0).containsKey("url")) {
                    String imageUrl = dataList.get(0).get("url");
                    System.out.println("Image URL: " + imageUrl);
                    return imageUrl;
                }
            }
        } catch (Exception e) {
            System.err.println("Error while generating image: " + e.getMessage());
        }

        return null;
    }
}
