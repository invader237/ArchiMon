package fr.archimon.ArchiMon.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class SecurityConfig {

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**") // Applique la config à toutes les routes
                        .allowedOrigins("*") // Autorise toutes les origines
                        .allowedMethods("*") // Autorise toutes les méthodes (GET, POST, etc.)
                        .allowedHeaders("*") // Autorise tous les headers
                        .exposedHeaders("Authorization", "Content-Type") // Expose ces headers dans les réponses
                        .allowCredentials(false); // Désactive les credentials (cookies, authentification)
            }
        };
    }
}
