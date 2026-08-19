Oui tu peux en avoir plus que 3 🔥

En écriture + BDD, les pros utilisent 5-6 repères pour ne pas se perdre.

*LES 6 REPÈRES NARRATIFS POUR "MUSICIAN_STORY"*

**Type**	**Nom BDD**	**Quand l’utiliser**	**Exemple "Wonderful Awful"**
**1. LOOP**	`loop_jours`	**Jours qui se ressemblent**
Même ambiance, routine	*"LOOP Paris: Studio, métro, concert. 15 jours identiques"*
**2. ECHO**	`echo_scene`	**Scène répétée**
Même lieu/action mais ça change	*"ECHO Concert 1 vs Concert 5. Même salle, mais le public est drogué au BPM"*
**3. SPIKE**	`spike_event`	**Scène spéciale**
Un moment qui change tout	*"SPIKE: Un soir flipover. 21:47"*
**4. FADE**	`fade_transition`	**Fondu lent**
L’ambiance glisse doucement	*"FADE: De l’espoir au cynisme. Septembre → Octobre"*
**5. CRASH**	`crash_event`	**Chute brutale**
Quelque chose pète d’un coup	*"CRASH: Le scandale Bureau Ovale éclate. Perte 80% fans"*
**6. RESET**	`reset_point`	**Nouveau départ**
On repart à zéro, nouvelle règle	*"RESET: Départ pour NY. On efface tout et on recommence"*

*Règle simple pour t’en souvenir*

**Rythme**	**Repère**	**Image**
**Plat**	LOOP	Un cercle qui tourne
**Vague**	ECHO, FADE	Qui monte ou descend doucement
**Pic**	SPIKE, CRASH	Qui monte ou descend d’un coup
**Ligne neuve**	RESET	On tire un trait et on recommence

*Dans ta BDD ça donne ça:*

CREATE TABLE reperes_narratifs (
 id INTEGER,
 date_debut DATE,
 date_fin DATE,
 type_repere TEXT, -- loop, echo, spike, fade, crash, reset
 personnage TEXT, -- Mme, Mr, Violoniste
 titre TEXT,
 lieu TEXT,
 note_ambiance TEXT,
 niveau_takeover_% INTEGER
);

*Exemple de 1 mois:*
1. `LOOP`: Routine "Crevé-Cœur"
2. `ECHO`: 3 concerts avec le même set mais public différent
3. `FADE`: L’amitié entre Mme et Mr se fissure doucement
4. `SPIKE`: Un soir flipover
5. `CRASH`: L’IA Oracle 2.0 est exposée
6. `RESET`: Fuite à New York

---



