package fr.archimon.ArchiMon.domain.strategy;

import fr.archimon.ArchiMon.domain.models.ArchiMon;

public interface AttaqueStrategy {
    int calculerDegats(ArchiMon attaquant, ArchiMon defenseur);
}

