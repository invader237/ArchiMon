package fr.archimon.ArchiMon.domain.strategy;

import fr.archimon.ArchiMon.domain.models.ArchiMon;
import java.util.Random;

public class AttaqueRapide implements AttaqueStrategy {

    private static final int DEGATS = 10;
    private static final double PRECISION = 0.9;

    @Override
    public int calculerDegats(ArchiMon attaquant, ArchiMon defenseur) {
        return (new Random().nextDouble() < PRECISION) ? DEGATS : 0;
    }
}
