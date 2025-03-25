package fr.archimon.ArchiMon.infra.in.REST;

import fr.archimon.ArchiMon.api.CombatApi;
import fr.archimon.ArchiMon.domain.mapper.ArchimonToArchimonCombatMapper;
import fr.archimon.ArchiMon.domain.mapper.CombatToCombatDTOMapper;
import fr.archimon.ArchiMon.domain.mapper.IntToIdentifiableMapper;
import fr.archimon.ArchiMon.domain.models.*;
import fr.archimon.ArchiMon.domain.models.enums.StateCombat;
import fr.archimon.ArchiMon.infra.catalog.*;
import fr.archimon.ArchiMon.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.List;
import java.util.Random;

@RequiredArgsConstructor
@RestController
public class CombatController implements CombatApi {

    private final TeamCatalog teamCatalog;
    private final CombatCatalog combatCatalog;
    private final IntToIdentifiableMapper intToIdentifiableMapper;
    private final CombatToCombatDTOMapper combatToCombatDTOMapper;
    private final ArchiMonCatalog archiMonCatalog;
    private final TypeMultiplicateurCatalog typeMultiplicateurCatalog;
    private final CapacityCatalog capacityCatalog;
    private final ArchimonToArchimonCombatMapper archimonToArchimonCombatMapper;
    private final ArchiMonCombatCatalog archiMonCombatCatalog;

    @Override
    public Identifiable create(CombatPostDTO combatPostDTO) {
        Team firstTeam = teamCatalog.getById(combatPostDTO.getIdFirstTeam());
        Team secondTeam = teamCatalog.getById(combatPostDTO.getIdSecondTeam());

        Combat combat = new Combat();
        combat.setFirstTeam(firstTeam);
        combat.setSecondTeam(secondTeam);

        return intToIdentifiableMapper.apply(combatCatalog.save(combat).getId());
    }

    @Override
    public List<CombatDTO> getAll() {
        return combatCatalog.getAll().stream()
                .map(combatToCombatDTOMapper)
                .toList();
    }

    @Override
    public CombatDTO getById(Integer id) {
        return combatToCombatDTOMapper.apply(combatCatalog.getById(id));
    }

    @Override
    public Integer getWhoStarts(Integer id) {
        Combat combat = combatCatalog.getById(id);
        combat.setStatus(StateCombat.BEGINSTARTED);

        int firstTeamSpeed = combat.getFirstTeam().getArchimons().stream()
                .mapToInt(ArchiMon::getSpd)
                .sum();

        int secondTeamSpeed = combat.getSecondTeam().getArchimons().stream()
                .mapToInt(ArchiMon::getSpd)
                .sum();

        int whoStarts = firstTeamSpeed > secondTeamSpeed ? combat.getFirstTeam().getId() : combat.getSecondTeam().getId();

        combat.setTeamTurn(whoStarts);
        combatCatalog.save(combat);

        return whoStarts;
    }

    @Override
    public CombatResult play(Integer id, CombatPlayDTO combatPlayDTO) {
        Combat combat = combatCatalog.getById(id);
        int teamEnemy = combatPlayDTO.getTeamId() == combat.getFirstTeam().getId() ? combat.getSecondTeam().getId() : combat.getFirstTeam().getId();
        int teamTurn = combat.getTeamTurn();

        if(combatPlayDTO.getTeamId() == teamTurn) {
            ArchiMon attacker = archiMonCatalog.getById(combatPlayDTO.getArchimonId()).cloneForCombat();
            ArchiMon defender = archiMonCatalog.getById(combatPlayDTO.getArchimonEnemyId()).cloneForCombat();

            ArchiMonCombat archiMonCombat = archimonToArchimonCombatMapper.apply(attacker);
            ArchiMonCombat archiMonCombatEnemy = archimonToArchimonCombatMapper.apply(defender);

            Capacity capacity = capacityCatalog.getById(combatPlayDTO.getCapacityId());

            CombatResult result = new CombatResult();

            if (attaqueTouche(capacity.getPrecision())) {
                result.setState(CombatResult.StateEnum.SUCCESS);

                TypeMultiplicateur multiplicateur = typeMultiplicateurCatalog
                        .findByTypeDefensifAndTypeOffensif(
                                attacker.getTypes().getFirst(),
                                defender.getTypes().getFirst()
                        );

                double ratioAtkDef = (double) attacker.getAtk() / defender.getDef();
                int degats = (int) (capacity.getPuissance() * ratioAtkDef * multiplicateur.getMultiplicateur());

                int newPv = defender.getPv() - degats;
                archiMonCombatEnemy.setPv(Math.max(0, newPv));

                if (newPv <= 0) {
                    combat.setStatus(StateCombat.NEXTTURN);
                }

                result.setDamage(BigDecimal.valueOf(degats));
                result.setRestLife(BigDecimal.valueOf(attacker.getPv()));
                result.setRestLifeEnemy(BigDecimal.valueOf(defender.getPv()));
            } else {
                result.setState(CombatResult.StateEnum.FAILURE);
            }

            archiMonCombatCatalog.save(archiMonCombatEnemy);
            archiMonCombatCatalog.save(archiMonCombat);

            combat.setTeamTurn(teamEnemy);
            combatCatalog.save(combat);

            return result;
        }

        return null;

    }

    public static boolean attaqueTouche(double precision) {
        return new Random().nextInt(100) + 1 <= precision;
    }
}
