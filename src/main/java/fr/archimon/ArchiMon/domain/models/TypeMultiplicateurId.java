package fr.archimon.ArchiMon.domain.models;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class TypeMultiplicateurId implements Serializable {

    private int typeOffensif;
    private int typeDefensif;

    public TypeMultiplicateurId() {}

    public TypeMultiplicateurId(int typeOffensif, int typeDefensif) {
        this.typeOffensif = typeOffensif;
        this.typeDefensif = typeDefensif;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TypeMultiplicateurId)) return false;
        TypeMultiplicateurId that = (TypeMultiplicateurId) o;
        return typeOffensif == that.typeOffensif &&
                typeDefensif == that.typeDefensif;
    }

    @Override
    public int hashCode() {
        return Objects.hash(typeOffensif, typeDefensif);
    }
}
