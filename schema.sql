CREATE TABLE  IF NOT EXISTS contacts (
	contact_id INTEGER PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE,
	phone TEXT NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS groups (
   group_id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS contact_groups(
   contact_id INTEGER,
   group_id INTEGER,
   PRIMARY KEY (contact_id, group_id),
   FOREIGN KEY (contact_id) 
      REFERENCES contacts (contact_id) 
         ON DELETE CASCADE 
         ON UPDATE NO ACTION,
   FOREIGN KEY (group_id) 
      REFERENCES groups (group_id) 
         ON DELETE CASCADE 
         ON UPDATE NO ACTION
);
INSERT OR IGNORE INTO contacts (contact_id, first_name, last_name, email, phone)
VALUES( '1', 'anonyme', 'noname', 'anonymous@email.fr', '+2653546434');
INSERT OR IGNORE INTO contacts (contact_id, first_name, last_name, email, phone)
VALUES( '2', 'anne onim', 'onim', 'anne.onim@email.com', '+86877779898');
create table if not exists scene(
        id integer primary key autoincrement,
        title text,
	texte text,
            music_id text,
            pic text,
            chapter_id text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists scene_has_dialog(
        id integer primary key autoincrement,
        scene_id text,
        texte text,
            character_id text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists scene_has_character(
        id integer primary key autoincrement,
        scene_id text,
            character_id text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists character(
        id integer primary key autoincrement,
        name text,
            pic text,
            biography text,
            country_id text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists country(
        id integer primary key autoincrement,
        name text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists chapter(
        id integer primary key autoincrement,
        title text,
            myorder text,
            content text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
create table if not exists music(
        id integer primary key autoincrement,
        title text,
            composer text,
            score text,
            scene_id text,
            time_signature text,
            key_signature text,
            pic text
      , created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP                );
insert into chapter (title, myorder, content) values ('Chapter 1', '1', 'content of chapter 1');
insert into scene (texte, chapter_id) values ("L'histoire s'ouvre simultanément sur deux continents",'1');
insert into scene (texte, chapter_id) values (" En France, dans sa ville d'habitat, une Violoniste vit a paris, prépare ses partitions numériques dans une ville moderne avec des affichages out of home (out-of-home-city)",'1');
insert into scene (texte, chapter_id) values (" elle a beaucoup de hobbies (hobbies-do-it-yourself) comme le sport (elle veut en faire beaucoup pour sentrainer le physique ou mental et etre dans la competition), musique (avec mme et m classical pop), programmation (pour survivre aux aventures elle en aura besoin), voyages",'1');
insert into scene (texte, chapter_id) values (" les jours se répètent",'1');
insert into scene (texte, chapter_id) values (" ![alt text](voyage6",'1');
insert into scene (texte, chapter_id) values ("png)  De l'autre côté de l'Atlantique, aux États-Unis, A Miami, Mme et Mr Classical Pop planifient leur départ depuis leur propre métropole",'1');
insert into scene (texte, chapter_id) values (" Ils ont un style vestimentaire extravagant et vivent dans un style de musique classique",'1');
insert into scene (texte, chapter_id) values (" Les réseau social les plus importants dans l'histoire sont facebook, twitter, instagram, et certains réseaux sociaux de pays étrangers où ils veulent gagner de la popularité",'1');
insert into scene (texte, chapter_id) values (" ![alt text](voyage8",'1');
insert into scene (texte, chapter_id) values ("png)    mme musicienne publies sur les réseaux, et l’oracle (une IA qui lit les postes de reseaux sociaux) te permet de prédire : qui tu pourrais croiser en voyage Si ta publication va marcher Ce qui peut être diffusé à la radio, à la télé, dans les journaux ou sur les plateformes sociales (oracle-media), l'oracle est un texte affiché dans l'application, c'est une application de programmation",'1');
insert into scene (texte, chapter_id) values (" repère : elle utilise l'oracle 1 fois",'1');
insert into scene (texte, chapter_id) values (" ![alt text](voyage7",'1');
insert into scene (texte, chapter_id) values ("png)  cest un Génie (un developpeur rails qui joue un figurant dans lecole de musique aux usa, joue un social facilitator quand il y a beaucoup de rumeurs , il est reel dans lhistoire)",'1');
insert into scene (texte, chapter_id) values (" repere : le génie va une première fois aux usa",'1');
insert into scene (texte, chapter_id) values (" Peu importe la nature de ton vœu (un métier, un toit, un voyage aux USA, passer a la tele), si tu affirmes Je le veux vraiment, le processus est lancé",'1');
insert into scene (texte, chapter_id) values (" Que cela prenne 10 ou 40 ans, la grandeur est au bout du chemin pour ceux qui osent valider leurs rêves, même ceux qui semblent hors de portée",'1');
insert into scene (texte, chapter_id) values (" (genius-social-media) Le génie est un peu digital mais il est humain (un développeur rails qui a développé l'application du génie (dans l'histoire) est le génie)",'1');
insert into scene (texte, chapter_id) values (" Repere : mme musicienne peut voir a travers une tele les endroits ou elle aimerait aller ou les gens qu'elle rencontrer",'1');
insert into scene (texte, chapter_id) values ("  ![alt text](voyage4",'1');
insert into scene (texte, chapter_id) values ("png)  apres une video de flash mob dans laeroport aux usa et une deuxieme fois en Europe (quand mme et mr classical pop sont venus) qui force la premiere rencontre, mme musicienne va se connecter au wifi pour trouver the ideal date ( peut etre avec mme et m classical pop), elle va croiser le regard de mme etmr classical pop mais ne pas leur parler",'1');
insert into scene (texte, chapter_id) values (" ![alt text](voyage1",'1');
insert into scene (texte, chapter_id) values ("png) ![alt text](voyage2",'1');
insert into scene (texte, chapter_id) values ("png)  ![alt text](voyage3",'1');
insert into scene (texte, chapter_id) values ("png)    repere : cest dans cette periode que mme musicienne veit etre decider de postuler pour une ecole de musique ou voyage avec pour but ou hobbies la musique  mme musicienne veut more than just a journey: Meet at the plane/train/airport avec mme et me classical pop: Connect with nearby travelers before boarding or during the trip",'1');
insert into scene (texte, chapter_id) values (" Be in the “competition”: Join friendly music challenges, playlists battles, or style contests with other users",'1');
insert into scene (texte, chapter_id) values (" (flight-at-first-sight) ![alt text](voyage5",'1');
insert into scene (texte, chapter_id) values ("png) ",'1');
insert into scene (texte, chapter_id) values ("Pendant ce temps, de l'autre côté de l'Atlantique, aux USA, habitent Mme et Mr Classical Pop",'1');
insert into scene (texte, chapter_id) values (" C'est le moment critique du music-at-first-sight : la Violoniste, en voyage d'étude, croise mme et mr dans le même couloir d'un grand bâtiment américain de logements",'1');
insert into scene (texte, chapter_id) values (" Ils se croisent sans se rencontrer vraiment",'1');
insert into scene (texte, chapter_id) values (" ![alt text](hello3",'1');
insert into scene (texte, chapter_id) values ("png)  le ton est surpris ou amusé voire ironique comme si personne ne laisse rien voir delle ou de lui, avec un rire",'1');
insert into scene (texte, chapter_id) values ("  mais dans le fond, L'interaction est , presque explosive, presque comme si ils allaient lancer des bombes à eau lancées de manière espiègle, pour que ce soit pas violent, en regardant avec du recul, meme si ce nest pas sur, mais laissant une empreinte musicale indélébile dans l'esprit de chacun",'1');
insert into scene (texte, chapter_id) values ("  a la premiere impression, personne na eu peur",'1');
insert into scene (texte, chapter_id) values ("  dans les couloirs de lecole de musique, m",'1');
insert into scene (texte, chapter_id) values (" classical pop croise le genie voyageur de la lampe , celui qui a propose les voeux (voeux de passer a la tele) et sa rencontre qui devait durer seulement le temps de dire bonjour, dure plusieurs semaines",'1');
insert into scene (texte, chapter_id) values (" Il y a des rumeurs sur les fréquentations de M",'1');
insert into scene (texte, chapter_id) values (" Classical Pop, mais les rumeurs s'arrêtent là",'1');
insert into scene (texte, chapter_id) values ("  sans bien se connaitre ils vont prendre le bateau ensemble",'1');
insert into scene (texte, chapter_id) values ("  voyage en bateau  Tres tot, la Violoniste,mme et m classical pop prennent le bateau Ferry Boat ensemble (one-million-routes) pour faire connaissance",'1');
insert into scene (texte, chapter_id) values (" repere : le bateau peut etre place a la toute fin, quand les destins se sont croises et inverses, au debut mr classical pop avait le trait de caractere qui comprend le plus de choses ou qui decouvre en voyant/entendant la musiqu, vers la fin a plus ces traits, au debut mme classical pop est celle qui en fait qu'a sa tete, mme musicienne regarder plus autour delle, et elles echangent un peu de traits de caractere",'1');
insert into scene (texte, chapter_id) values ("  Le bateau est très grand, l'ambiance dans le bateau va a priori",'1');
insert into scene (texte, chapter_id) values (" La premiere cousine invité est une cousine de mme classical pop (mme classical pop rebel qui n'est pas mme classical pop, mais elle joue le premier role de mme classical pop, jouer de la musique classique ou pop ou de voyager en bateau (elle apparait dans le premier voyage en bateau avec mme musicienne / mr classical pop), elle disparait après)",'1');
insert into scene (texte, chapter_id) values (" Mme musicienne décide de croiser la fameuse cousine au même étage, de cohabiter/d'être en colocation dans les tous débuts de l'histoire",'1');
insert into scene (texte, chapter_id) values (" Ca bouleverse ses vues dans la musique classique ou pop",'1');
insert into scene (texte, chapter_id) values ("      on demande à mme classical pop de croiser beaucoup d'amies , d'inviter beaucoup d'amies, même si elle en fait pas de meilleures amies",'1');
insert into scene (texte, chapter_id) values ("      la musicienne pendant un jeu essaie de trouver dautres personnes (elle passe du temps avec mme classical (une autre amie, quelquun qui nest pas dans lhistoire) a lappartement pour jouer de la musoque classique et au centre commercial)",'1');
insert into scene (texte, chapter_id) values (" ![alt text](hello1",'1');
insert into scene (texte, chapter_id) values ("png)        La premiere conversation importante arrive sur qui va poster quoi (qui fera le plus peur , aura le plus de popularite sur les reseaux, mme musicienne doit resster plus discrete commme elle est invitee), Madame/Mr classical pop pourra poster son visage, sa voix, ses commentaires, mais mme musicienne ne publiera pas sa photo",'1');
insert into scene (texte, chapter_id) values (" La premiere conversation importante est sur ce qui est vrai sur eux (mme classical pop a un caractere comme si elle a ce qu'elle veit avec n'importe quel moyen), le caractere qu'on a, quand on veut/veut pas/aime/aime pas quelque chose",'1');
insert into scene (texte, chapter_id) values (" Leur goût, comment il faut parler",'1');
insert into scene (texte, chapter_id) values (" les limites est suils ne savent pas sils vont reussir",'1');
insert into scene (texte, chapter_id) values ("  ![alt text](hello2",'1');
insert into scene (texte, chapter_id) values ("png)  ",'1');
insert into scene (texte, chapter_id) values ("Repere: cest encore le debut, tout ce sur mme classical ou mme musicienne peuvent faire cest echanger sur leurs ages et leurs jeux de violon",'1');
insert into scene (texte, chapter_id) values (" cest une simple rencontre",'1');
insert into scene (texte, chapter_id) values ("  ![alt text](domaine1",'1');
insert into scene (texte, chapter_id) values ("png)   De retour en France, la Violoniste,mme et me classical pop se réfugie dans un grand domaine historique avec des pont levis (discover-domain-music) qui est comme un chateau pour faire connaissance",'1');
insert into scene (texte, chapter_id) values (" Muni de linstrument de musique, ils y deciuvre les secrets de larchet au moyen age, comme si ils conduisaient des chevaux, et tiraient des fleches avec des arcs",'1');
insert into scene (texte, chapter_id) values (" ils y découvre les secrets du réseau informatique du lieu, pour pouvoir communiquer entre eux, explore des partitions complexes et ajuste la tension de leur archet de violon",'1');
insert into scene (texte, chapter_id) values (" ILs découvrent les secrets informatiques de comment savoir si deux adresses sont dans le meme reseau, et comment communiquer entre 2 réseaux pour plus tard ne pas savoir qui va hacker qui entre eux",'1');
insert into scene (texte, chapter_id) values (" repere : ils ne vont plus grandir mais cest ke debut de lhistoire repere : mme musicienne et mme et mr classical pop se connaissent a peine on sait tres peu de trycs : taille , age, sexe , nom,nationalite  ![alt text](chateau1",'1');
insert into scene (texte, chapter_id) values ("png)  repere : mme musicienne veut imaginer son futur en se regardant dans un miroir mme musicienne a un peigne, un rasoir et une brosse a dents et un metier, mais elle imagine qu'elle a un second job dans le futur (room-based-inventory-AI) ![alt text](miroir1",'1');
insert into scene (texte, chapter_id) values ("png) ",'1');
insert into scene (texte, chapter_id) values ("repere : dans le 3e episode ils y a de grosses rummeurs qui posent sur les 2 cotes, mme et meclassical pop ou mme mysicienne, mais mme et mr classical pop vont revilutionner leir reputation et le monde avec l'ia Deuxième partie : L'Échappée Transatlantique et les Tensions Célèbres  Le voyage commence par un aller-retour intense entre la France et l'étranger, étalé sur une à dos d'années",'1');
insert into scene (texte, chapter_id) values (" Racines Humbles et Identités Multiples  mme classical pop, malgrér son statut de star, garde des racines humbles",'1');
insert into scene (texte, chapter_id) values (" ELle a grandi dans un famille de musique",'1');
insert into scene (texte, chapter_id) values (" ELle a développé une capacité à jongler entre plusieurs identités numériques, utilisant des avatars pour différentes facette de sa personnalité",'1');
insert into scene (texte, chapter_id) values (" ELle a grandi dans un quartier riche, elle a appris le violon",'1');
insert into scene (texte, chapter_id) values (" ELle a commencé à créer des avatars pour pouvoir influencer plus de gens autour d'elle",'1');
insert into scene (texte, chapter_id) values (" Par exemple, un avatar de violon spécialement pour constituer un réseau de musicienne (musicien) plus de musicienne",'1');
insert into scene (texte, chapter_id) values (" M Classical pop a toujours été fasciné par les systèmes, structures et réseaux",'1');
insert into scene (texte, chapter_id) values (" Il a grandi dans une famille ou la technologie etait reine il a appris a coder avant de savoir lire",'1');
insert into scene (texte, chapter_id) values (" Il a d'abord appris python",'1');
insert into scene (texte, chapter_id) values (" Il a rencontré Mme classical pop à l'école",'1');
insert into scene (texte, chapter_id) values (" Un moment ou leur duo a failli se briser est pour etudier la musique",'1');
insert into scene (texte, chapter_id) values (" un moment ou leur duo a brillé et quand ils commencent à gagner de la popularité",'1');
insert into scene (texte, chapter_id) values (" repere : au 3e episode cest le moment ou mme et m classical pop se prepare a devenir des tyran     ![alt text](departure1",'1');
insert into scene (texte, chapter_id) values ("png) mme et mr classical pop sont venus chercher la violoniste jusqua son domicile a laube avant de commencer laventure",'1');
insert into scene (texte, chapter_id) values ("    ![alt text](bedroom1",'1');
insert into scene (texte, chapter_id) values ("png)  Ils s'installent d'abord dans des habitations modestes appelées Crevé-Cœur (heartbreaking-housing)",'1');
insert into scene (texte, chapter_id) values ("  ![alt text](rental1",'1');
insert into scene (texte, chapter_id) values ("png)   Là, ils côtoient des métiers simples — boulangers, jardiniers, potiers — dont les gestes nourrissent leur inspiration",'1');
insert into scene (texte, chapter_id) values ("  ![alt text](jardinier1",'1');
insert into scene (texte, chapter_id) values ("png)  Le voyage les mène le long des côtes maritimes, intégrant les bruits des vagues et des ports à leurs compositions",'1');
insert into scene (texte, chapter_id) values (" ![alt text](mer1",'1');
insert into scene (texte, chapter_id) values ("png)  repere : au 2e episode ils cotagent sans accentuer leur reputation ou conflits  +------------------+---------------------------+-------------------------+ | Personnage       | Identité Diurne           | Identité Nocturne       | +------------------+---------------------------+-------------------------+ | La Violoniste    | Gendarme / Classique      | Virtuose Cyber-Punk     | | Le Couple Pop    | Bourgeois Américains      | Influenceurs Théâtraux  | +------------------+---------------------------+-------------------------+   ",'1');
insert into scene (texte, chapter_id) values ("    repere : au 1er episode ou 2e quand mme musicienne en est a apprendre la musique elle rencontre un developpeur rails qui traverse les villes comme les saisons de vivaldi et transporte aveclui l'hologramme d'une pop star, mais elle croise son chemin seulement",'1');
insert into scene (texte, chapter_id) values (" (holographic-companion) ![alt text](season1",'1');
insert into scene (texte, chapter_id) values ("png)  la il y a comme un break",'1');
insert into scene (texte, chapter_id) values (" cest une periode ou les news dans les journaux sont tres agitees (ville-news--music-agitee) jusque pendant leur retour en france (1 semaine)  ![alt text](news1",'1');
insert into scene (texte, chapter_id) values ("png)   ![alt text](pizza1",'1');
insert into scene (texte, chapter_id) values ("png) repere : dans la periode ce ce break on demande a mme et mrclassical pop et mme musicienne s'ils aimeraient faire une aventure dans le pays de la musique ( pas un oays ocncret (italie, france,allemagne,autriche) mais un oays entre les partitions, la scene, backstage et onstage) ![alt text](conductor1",'1');
insert into scene (texte, chapter_id) values ("png)  repere : peut etre au 1er episode ou 4e episode piur calmer des tensions, quand mme musicienne doit apprendre la musique - mme musicienne essaie de s'intégrer au monde de la tv des videos & friends de la musique classique mais elle trouve qu'il y a trop de pression et elle abandonne à d'autres occupations ![alt text](chambermusic1",'1');
insert into scene (texte, chapter_id) values ("png)  aux usa, mme classical pop doit, quand tu as plus de 18 ans, bookmark ce quetu aime/aimes pas qui vient du monde entier avec dautres amies",'1');
insert into scene (texte, chapter_id) values (" mme et mr classical pop voudraient passer a la tele",'1');
insert into scene (texte, chapter_id) values (" ils retournent a la television ou ils font passer mme musicienne en priorite avec eux",'1');
insert into scene (texte, chapter_id) values (" aux usa, ils participent a unz ewperience de chat IA ou ils veulent determiner la suite de leurs voyages, si ce sera plus ou moins cool",'1');
insert into scene (texte, chapter_id) values (" (ai-chatbot-experience) a letranger, il passent a la tele dans une ville de disco ou est traduit en direct dans un plateau pour en dire plus",'1');
insert into scene (texte, chapter_id) values (" repere : peut etre au 1er episode, quand ils apprennent a se connaitre pour devoilee leur foyers d'origines pu au 4e episode pour permettre une fin differente , reperes ; ils se sont rencontrer mais se connaissent a peine  un developpeur rails montre a mr classical pop comment il peut chosse his electronic info : sport, activity, outdoors, indoors activity programming, digital ids, video photo, strong password, weak, musique photos, AI, social media digital ids posted by any 1",'1');
insert into scene (texte, chapter_id) values (" repere : vers le début, mr classical pop vient darriver a lecole de musique, un developpeur a la sortie de lecole de musique, lui parle des reseau sociaux, twitter, facebook pour qu'il commence à publier sa musique et lui donne les cles pour devenir influenceur",'1');
insert into scene (texte, chapter_id) values ("  un autre developpeur propose d'emmener mme classical pop ou musicienne sur le boulevard de l'amour (from-bash-to-boulevard)",'1');
insert into scene (texte, chapter_id) values (" repere : au1e episode pour calmer des tensions quand mme musicienne apprend la musique mais la rencontre nest pas ideale pour le moment ![alt text](fifth1",'1');
insert into scene (texte, chapter_id) values ("png)  mme et m classical pop commencent a avoir pour motto a rhapsody for you and me, do you want to be part ofmy symphony? pour inviter dautres gens",'1');
insert into scene (texte, chapter_id) values (" ils doivent chacun jouer leur role sur les reseaux sociaux (miniature-musicien) et commencent a gagner de la popylarite sur des reseaux sociaux amerixains minuature (minuature-usa-social-media) repere : comme une invitation pu une simple motto au 2e episode qui ne determine rien pour la suite ![alt text](musiciandawn1",'1');
insert into scene (texte, chapter_id) values ("png) ",'1');
insert into chapter (title, myorder, content) values ('Chapter 2', '2', 'content of chapter 2');
insert into scene (texte, chapter_id) values ("Ils cherchent à lier leurs destins à travers une expédition urbaine",'2');
insert into scene (texte, chapter_id) values (" ILs voyagent surtout pour un changement dans leur carrière",'2');
insert into scene (texte, chapter_id) values (" tous les posts de reseau sociaux de mme et me classical pop et mme musicienne sont comme une grande gare de metro ou on peut lire des sport quotes, aller au metro,bus, train, study music",'2');
insert into scene (texte, chapter_id) values (" Mme et m classical pop avoir plusieurs fausses identites en ligne pour vendre de la musique, identites comme leur photo retouchée , sur un compte et des choses qu'il savent pas faire sur un compte artistique, ou des faux compte artistiques liés à l'espionnage pour etre mieux place pour vendre leur musique",'2');
insert into scene (texte, chapter_id) values (" chaque jour ils postent un truc différent",'2');
insert into scene (texte, chapter_id) values (" ![alt text](direction1",'2');
insert into scene (texte, chapter_id) values ("png)  Repere : a larrivee il n'y a pas encore la revendication cest moi qui joue, jai mal aux doigt, nous sommes indestructible, cest moi qui cree un compte anonyme en ligne",'2');
insert into scene (texte, chapter_id) values (" etc",'2');
insert into scene (texte, chapter_id) values (" ![alt text](superman1",'2');
insert into scene (texte, chapter_id) values ("png)    cest a leur deuxieme ou troisieme venue",'2');
insert into scene (texte, chapter_id) values (" repere : a la toute premiere arrivee in voit seulement lage, le pays, lhumeur, linstrument de musique/les hobbys, un nom de job",'2');
insert into scene (texte, chapter_id) values (" repere : a leur dexieme arrivee ils sont incites a des dev sessions from dusk till dawn , ont quelque soucis / rumeurs, puis ils retournent aux usa repere : a la troisieme venue il y a des rumeurs a larrivee ils sont indestructible   ",'2');
insert into scene (texte, chapter_id) values ("au bout d'un an d'intégration, mme et mr classical pop sont encore des étrangers",'2');
insert into scene (texte, chapter_id) values ("  repere : cest vers le milieu des aventures ou ca peut etre au tout debut a 18 ans, quand les gens ont le 2e degre deux memes, ou se connaissent bien eux memes ou entre eux , ils veulent passer a la tele ",'2');
insert into scene (texte, chapter_id) values (" ![alt text](symfony1",'2');
insert into scene (texte, chapter_id) values ("png)  au début Mme violoniste vient juste d'apprendre le Symfony framework et rencontre Mme et mR classical pop qui connaissent beaucoup de Symphonies",'2');
insert into scene (texte, chapter_id) values (" ellle a échangé avec Mme classical pop sur les mêmes morceaux de violon qu'elle peut jouer, la partita ou la gigue",'2');
insert into scene (texte, chapter_id) values (" au premier noel, Mme classical pop lui aurait offert un livre sur l'amour et le coeur",'2');
insert into scene (texte, chapter_id) values (" ![alt text](pic1",'2');
insert into scene (texte, chapter_id) values ("png) ![alt text](pic2",'2');
insert into scene (texte, chapter_id) values ("png)  repere : vers le milieu fin ou tout debut  mme et mrclassical veulent participer a virtual television experience, set inside a fictional disco city ou tout est traduit en direct, pour parler de leir rencontre et difficultes ou reussite repere : mme et mr classical pop se sont integres en France mais pas completement ![alt text](tv2",'2');
insert into scene (texte, chapter_id) values ("png) ![alt text](tv1",'2');
insert into scene (texte, chapter_id) values ("png)      repere : mme et mr classical pop racontent leur experience en France",'2');
insert into scene (texte, chapter_id) values (" Mme classical pop apprend mieux les langues étrangères  mme et mr classical pop publie ai-digital-guide-partying",'2');
insert into scene (texte, chapter_id) values (" ![alt text](car1",'2');
insert into scene (texte, chapter_id) values ("png)  repere : ils decouvrent de la musique et set themselves et set path and conbections (life-set) repere: mme musicienne cherche comment hacker une voiture electrique, un iphone, video game et cest la periode ou ils passent leur nuit a la disco au rythhme des hits et ou ils sentraident pour rentrer dans leur appartement quand ils sont pas sobre",'2');
insert into scene (texte, chapter_id) values (" ![alt text](parfumfemme1",'2');
insert into scene (texte, chapter_id) values ("png) ![alt text](parfumhomme1",'2');
insert into scene (texte, chapter_id) values ("png) mme musicienne decide quelle voudrait aller plus tard au pays du coeur, memore ou emotion, behind scenes of dy namics, bpm, rythme, expression markings, sur instagram",'2');
insert into scene (texte, chapter_id) values (" repere: il y a un moment ou ils partent une fois de la gare , au pays de la musique et la gare ou les passants de la gare sont un reseau social repere : cest le deuxieme episode ou bbillet davion repere : au 2e episode, tout le monde signe de ne pas retourner dans son foyer, malgre les news agitees au journal national et local,  les musiciens commencent deja a pouvoir se maquiller pour la scene (make-up-faker) et a hacker le style pop sur scene en apprenant a chanter , dans un blog, mme musicienne ecrit sur des digital identity weak or strong, warn several posts' harm, ecrit cybertip",'2');
insert into scene (texte, chapter_id) values (" repere : cest la periode au 2e episode ou mme et mr classical pip et mme musixicienne s'inscrivent a lecole de musique cohabite ,sentraine ensemble longuement et donne tres peu de nouvelles ou donne des nouvelles très floues de leur cohabitation",'2');
insert into scene (texte, chapter_id) values (" apprendre à se connaître est long",'2');
insert into scene (texte, chapter_id) values ("       ",'2');
insert into scene (texte, chapter_id) values ("c'est alors qu'intervient l'anomalie (bookish-cruel-love)",'2');
insert into scene (texte, chapter_id) values (" Devant un stand de brocante en France, une vidéo générée par une IA ouvre une faille vers un monde parallèle : un parc d'attractions américain déformé",'2');
insert into scene (texte, chapter_id) values ("  ![alt text](marche1",'2');
insert into scene (texte, chapter_id) values ("png)   Ce portail les connecte à la République de l'Amour Cruel, un univers calqué sur la pop culture des USA où le couple Monsieur et Madame Parfait (Mr et Mme Classical Pop) utilise la musique classique comme une arme brute pour remodeler les consciences de leur audience",'2');
insert into scene (texte, chapter_id) values (" repere : 3e episode madame Classical Pop veut jouer le rôle de la dame au milieu (thé woman-in-the-middle) et apparaître sur tous les grands affichages , pour qu'on ne voit qu'elle et pour semer la terreur dans son quartier",'2');
insert into scene (texte, chapter_id) values ("  mme et mr classical pop recommencent a sinscrire a lecole de musique locale et diffuser des rumeurs comme quoi apprendre a se connaitre est long parfois",'2');
insert into scene (texte, chapter_id) values (" cest leur nouvelle tentative de se rendre bien sur scene (performing-arts, perform-me) repere : comme au 2e episode, sauf quau 3e episode, le visage de mme classical pop s'affichhe oartout dans les rues (out-of-home-face)  Ensuite commence le voyage en train/bus pour quoi ils ont signé",'2');
insert into scene (texte, chapter_id) values (" Ils documentent tout",'2');
insert into scene (texte, chapter_id) values (" Via un blog urbain (city-blogger), ils écrivent sur leurs instruments et leurs moyens de transport",'2');
insert into scene (texte, chapter_id) values (" Ils basculent dans une aventure permanente (out-of-the-morning-adventure), guidés par la météo et une IA locale",'2');
insert into scene (texte, chapter_id) values (" Ils convertissent leurs maquettes via yt-mp3 et lancent la tournee-coeur-ouvert pour secouer le public jusqu'à ce qu'il aime le classique",'2');
insert into scene (texte, chapter_id) values (" chaque fois ou il ont decide detre en mode aventures, ils utilisent from-dusk-till-dawn-dev-session, a full-stack code generator that transforms a simple HTML form into a bash script that scaffolds your entire project from backend APIs to frontend templates",'2');
insert into scene (texte, chapter_id) values ("  Leur quotidien devient une lutte sur la route (road-struggle-story)",'2');
insert into scene (texte, chapter_id) values (" Les Classical Pop Buddies et la Violoniste voyagent dans un van délabré, partageant l'épuisement des fins de mois difficiles, adoptant un état d'esprit de hacker-musicien (musician-mindset) face aux contrôles douaniers stricts (musical-border-control)",'2');
insert into scene (texte, chapter_id) values (" repere : 2e episode , ils peuvent itiliserl'IA mais ce nest pas pour arranger leur celebrite ![alt text](road1",'2');
insert into scene (texte, chapter_id) values ("png) ",'2');
insert into scene (texte, chapter_id) values ("bientôt , mme et mr classical pop sont toujours étrangers mais ils veulent se rébeller",'2');
insert into scene (texte, chapter_id) values (" mme et mr classical pop rencontre tres vite mme musicienne au cafe de la ville",'2');
insert into scene (texte, chapter_id) values (" ils se montrent leur identites numerique ( tout leur compte de reseau social au cafe mme classical obtoent tout ce quelle veut peu importe comment, m classical pop apprecie le resultat, mme musicienne aime participer) et decide de commencer une cohabitation tout de suite (une voyante avaot predit loracle et pour forcer le destin et ils peuvent jouer de la musique ensemble) et pour determiner comment ils peuvent briser la glace plus vite",'2');
insert into scene (texte, chapter_id) values (" repere : il ny a eu que des reseaux sociaux ou photo pour tout voir jusqua ce moment  apres la deuxieme arrivee de mme et mr classical pop dans la capitale de la France Paris, il y a deja des rumeurs sur un album qui va sortir ou la reputation sur les reseaux sociaux (bangtan-news) mais ca ne predit rien pour l'avenir",'2');
insert into scene (texte, chapter_id) values (" Repere : cest apres la deuxieme voire ka troisieme venue repere : au debut on ne les connait pas du tout",'2');
insert into scene (texte, chapter_id) values (" apres ils se font connaitre",'2');
insert into scene (texte, chapter_id) values (" leur troisiemme aller retour avec leur pays dorigibe est du surreel dans lhistoire",'2');
insert into scene (texte, chapter_id) values ("  au bout des quelque mois, mme et mr classical pop veulent partager de leur musique en utilisant symfony",'2');
insert into scene (texte, chapter_id) values (" Après avoir publié leur musique, Mme et Mr classical pop créent chacun leurs comptes pour devenir des artisans de leur musique sur le web",'2');
insert into scene (texte, chapter_id) values (" Mme classical pop apparait en voiture electrique pour frequenter les premieres discos",'2');
insert into scene (texte, chapter_id) values (" Mme classical pop pose pour des publicités out of home pour des marques affichées dans la ville",'2');
insert into scene (texte, chapter_id) values ("  La rumeur est que l'album est de Mme et M Classical Pop qui disent être invincible ou indestructible de la musique sur les réseaux sociaux (ces rumeurs sont marketing mais se veulent vraie)",'2');
insert into scene (texte, chapter_id) values (" Mme et M Classical Pop font des vidéos de musique avec un look extravagant et un style Classical/pop pour le trailer de leur album",'2');
insert into scene (texte, chapter_id) values ("    mme classical pop et mr classical pop cherche des future musiciens pour leur pays de la musique, font jouer des gens pour ecouter sils peuvent jouer",'2');
insert into scene (texte, chapter_id) values ("  mme musicienne veut decouvrir le back-end ou frobt-end de sa ville (city-street-front-end-back-end) repere : mme musicienne vient a peine de decouvrir le dev web quand il ny a pas mme ou mr, avant larrivee de mme et mr ",'2');
insert into scene (texte, chapter_id) values ("ils préparent un grans voyage pour être rebels mais indépendant",'2');
insert into scene (texte, chapter_id) values (" ![alt text](immeuble1",'2');
insert into scene (texte, chapter_id) values ("png)  mme musicienne donne son job, ses travel, ses base de donnees de blog ,, id, ses data conversatinos, ses photos, et tiute sa confiance a une voyante qui lit des news about a destination et peut predire l'avenir",'2');
insert into scene (texte, chapter_id) values (" La voyante est moderne ou mme musicienne peut choisir une IA si elle préfère",'2');
insert into scene (texte, chapter_id) values (" Elle découvre qu'elle va rencontrer Mme et M classical pop, qu'elle va découvrir la vérité, que s'ils prennent l'avion, elle va entendre les news de son pays, et toute une série d'évènements , de périodes difficiles à traverser vont arriver",'2');
insert into scene (texte, chapter_id) values (" repere : mme musicienne a pris un vol long courrier ![alt text](voyante1",'2');
insert into scene (texte, chapter_id) values ("png)  ![alt text](train1",'2');
insert into scene (texte, chapter_id) values ("png) ![alt text](train2",'2');
insert into scene (texte, chapter_id) values ("png) il y a une radio job & hits, or radio transportation & hits, qui dit en direct qu'un, bateau arrive avec radio broascaster ( qui transporte mme et mr classical pop) , et il y a des grands panneaux d'affichage out of home de l'arrivee",'2');
insert into scene (texte, chapter_id) values (" (rails-region-out-of-home) repere : il y a des affiches de concerts, photo de groupes, qui envoie des message que tout va bien   ![alt text](photopouce1",'2');
insert into scene (texte, chapter_id) values ("png) , repere : ca peut etre un signe que mme et mr classical pop vont arriver ou un signe premonitoire du futur  mme musicienne cree une voyante numerique qui t’accompagne dans ta journée, te guide dans une ville choisie par l’intelligence artificielle, t’aide à te coiffer, te préparer (voyante-numerique)",'2');
insert into scene (texte, chapter_id) values (" la voyante lit dans la boule de crystal les rencontres et les destins (boule-de-crystal)",'2');
insert into scene (texte, chapter_id) values (" repere : personne ne s'est rencontré  ![alt text](globetrotter1",'2');
insert into scene (texte, chapter_id) values ("png) mme musicienne rencontre un développeur Ruby on Rails qui vit entre deux commits et deux fuseaux horaires, quelque part sur une route poussiéreuse, un sentier de jungle ou une piste cyclable qui mène vers l’inconnu",'2');
insert into scene (texte, chapter_id) values (" (globe-trotter-developer)  repere : mme et mr classical ne sont pas arrives, mme musicienne connait le voyage comme dans les guides de voyageurs mme musicienne cree de partition automatique avec des couleurs ou non, avant de partir à l'aventure (automatic-score-adventure) repere : mme musicienne doit apprend a coder avec un codeur qui a le seum mais gentil repere : mme classical commence a avoir des",'2');
insert into scene (texte, chapter_id) values (" affichages out of home dans la ville, il y a des rumeurs comme quoi mme et mr classical pop pouraaient avoir tente de sequestrer des gens comme mme musicienne repere : on est dans hometown ![alt text](devweb1",'2');
insert into scene (texte, chapter_id) values ("png)  en voyage en bateau, mme et mr clasical pop publient des vues panoramiques des milieux naturels (social-simulation-lab) mme et mr classical pop et mme musicienne ont 2 mode dexister en ligne un profil visible, qui s’exprime ouvertement et montre sa vraie identité (mme et m classical pop), un profil discret, qui limite fortement son exposition et utilise parfois des informations artificielles (mme musicienne)",'2');
insert into scene (texte, chapter_id) values (" ils veulent echanger leurs points de vue ou leur place (arts-adventure)  dans une ville ou elle a migré, mme musicienne commence a ecrire ce qu'elle a vu dans GemPlace, une application Python conçue pour créer, organiser et revisiter une liste d’endroits importants — réels, imaginaires ou symboliques",'2');
insert into scene (texte, chapter_id) values (" Elle permet de mesurer la distance vers ces lieux, de suivre leur évolution au fil de la journée, et de partager des impressions ou des secrets avec d’autres utilisateurs",'2');
insert into scene (texte, chapter_id) values (" (gem-place-enigma) au fut et a mesure des vols court et long courrier (sturdy-long-haul)  mme musicienne cree in-tune, ne application web expérimentale qui utilise des cartes visuelles (réelles ou générées par IA) pour explorer des récits du futur",'2');
insert into scene (texte, chapter_id) values (" Chaque carte est liée à un moment, un lieu et une intention",'2');
insert into scene (texte, chapter_id) values (" L’interface adapte dynamiquement le contenu selon la langue, le fuseau horaire et le contexte de l’utilisateur pour se connexter aux evenements en direct et avec plusieurs personnes ",'2');
insert into scene (texte, chapter_id) values (" repere : mme musixienne vient de rencontrer mme et mr clasiscal pop mais veut essayer de predire le futur  Tous les voayges sont le plan B du sejour qu'il y a ( le sejour actuel), ou si toutes les cobditions esperees dun sejour sont pas remplies, les gens font un voyage, meme si ils vivent une sutiation similaire des fois le voyage fait changer des choses",'2');
insert into scene (texte, chapter_id) values (" repere : mme musixienne et mme et mr classical pop se sont rencontres et vivent sejour dans des endroits et cohabitation pour une plus longue periode dans dautres endroits avec un job ou une situation",'2');
insert into scene (texte, chapter_id) values ("  ",'2');
insert into scene (texte, chapter_id) values ("Repere: cest encore le debut, tout ce sur mme classical ou mme musicienne peuvent faire cest echanger sur leurs ages et leurs jeux de violon",'2');
insert into scene (texte, chapter_id) values (" cest une simple rencontre",'2');
insert into scene (texte, chapter_id) values ("  De retour en France, la Violoniste,mme et me classical pop se réfugie dans un grand domaine historique avec des pont levis (discover-domain-music) qui est comme un chateau pour faire connaissance",'2');
insert into scene (texte, chapter_id) values (" Muni de linstrument de musique, ils y deciuvre les secrets de larchet au moyen age, comme si ils conduisaient des chevaux, et tiraient des fleches avec des arcs",'2');
insert into scene (texte, chapter_id) values (" ils y découvre les secrets du réseau informatique du lieu, pour pouvoir communiquer entre eux, explore des partitions complexes et ajuste la tension de leur archet de violon",'2');
insert into scene (texte, chapter_id) values (" ILs découvrent les secrets informatiques de comment savoir si deux adresses sont dans le meme reseau, et comment communiquer entre 2 réseaux pour plus tard ne pas savoir qui va hacker qui entre eux",'2');
insert into scene (texte, chapter_id) values (" repere : ils ne vont plus grandir mais cest ke debut de lhistoire repere : mme musicienne et mme et mr classical pop se connaissent a peine on sait tres peu de trycs : taille , age, sexe , nom,nationalite repere : mme musicienne veut imaginer son futur en se regardant dans un miroir mme musicienne a un peigne, un rasoir et une brosse a dents et un metier, mais elle imagine qu'elle a un second job dans le futur (room-based-inventory-AI) ",'2');
insert into scene (texte, chapter_id) values ("tres tot, mme classical pop se revele etre half-a-medium",'2');
insert into scene (texte, chapter_id) values ("   ![alt text](voyante2",'2');
insert into scene (texte, chapter_id) values ("png) ![alt text](fortuneteller1",'2');
insert into scene (texte, chapter_id) values ("png)  La nuit en programmant des bases de données qui contiennent des informations sur des personnes, dans un terminal, en fermant les yeux",'2');
insert into scene (texte, chapter_id) values ("   ![alt text](devweb2",'2');
insert into scene (texte, chapter_id) values ("png) ELle a des visions reelles sur les gens , elle voit la tête/photo d'une personne sur une face d'une carte elle retourne une carte et il y a écrit une texte ou une information comme un secret sur quelqu'un",'2');
insert into scene (texte, chapter_id) values (" repere : on a demande aux classical de participer au debeloppement web au deuxieme avion (voyage) et elle veut etre plus indepedente avex le developpement web et rails, pour sortir de son foyer, sexprimer elle meme (the-indie-rails) repere : tout lle monde vient de quitter son foyer Dans sa routine quotidienne (dusk-till-dawn), un assistant domotique allume une lampe dès le matin pour signaler qu'il est temps de partir à l'aventure",'2');
insert into scene (texte, chapter_id) values (" Une douce mélodie résonne : I want to be indie, I want to be cool",'2');
insert into scene (texte, chapter_id) values (" cest une routine reele pour faire sortir les gens de chez eyx",'2');
insert into scene (texte, chapter_id) values (" repere : cest le debut de lhistoire  ![alt text](photographsky1",'2');
insert into scene (texte, chapter_id) values ("png) mme musicienne parle a un developpeur qui lui cobseille d'ecrire une celestial-story qui a des photo, video, text, code avec mme et mr classical pop with AI",'2');
insert into scene (texte, chapter_id) values (" repere : au premier mois de leur arrivee , mme musicienne aecrit une histoire ![alt text](paintingsky1",'2');
insert into scene (texte, chapter_id) values ("png)      la fille et le garçon se cachent dans une ligne de commande",'2');
insert into scene (texte, chapter_id) values (" la fille voit ce quelle veut voir/et refuse de voir ce qu'elle ne veut pas voir, le garcon voit ie resultat , ensemble ils forment la programmation du futur",'2');
insert into scene (texte, chapter_id) values (" qui voit la grande image ? ![alt text](travelerdusk1",'2');
insert into scene (texte, chapter_id) values ("png)     sur la route du crepuscule a laube, la question est devse demander : who will guide the other one through the dark side of the morning ? qui va trainer lautre derriere comme un sac au bout dun baton quand on est voyageur (meme si crst gentil)? repere : mme et mr classical pop viennent darriver au premier ou 2e avion et se font pas encore connaitre du crepuscule a l'aube , mme et mr classical pop sont livres a eux meme comme sils doivent vivre une aventure et la nuit ils doivent prevenir tous les dangers/ accidents (legendary-telegram) en hackant le systeme",'2');
insert into scene (texte, chapter_id) values (" leur identite double sont musiciens qui ont un entrainement, ou influenceurs sur les reseaux ou ils repandent des rumeurs",'2');
insert into scene (texte, chapter_id) values (" repere : cest le debut de la journee comme si cest le debut de sa vie, mme musixienne a beaucoup de messages repere : mme musicienne veut y voir clair et net dans la programmation/le developpement web, avecun model, vue,controllers ![alt text](travelerdusk3",'2');
insert into scene (texte, chapter_id) values ("png)  mr classical pop publie les event like concert, mme classical pop publie les news like traveling news, ils prendre le train , seulment pouvoir lire des news d'un concert, participer un concert, avoir un practice time, performance time, lire other news (event-news-blog)",'2');
insert into scene (texte, chapter_id) values (" ![alt text](concert1",'2');
insert into scene (texte, chapter_id) values ("png)  Pour garder la forme et affronter le monde, mme classical pop ou mme musicienne se bat contre le jeu (bats-contre-le-jeu) et s'inspire de citations de sportifs célèbres (that-basketball-kid)",'2');
insert into scene (texte, chapter_id) values (" mr classical pop veut rester connected a travers les reseaux sociaux (rails-browser-browse)",'2');
insert into scene (texte, chapter_id) values (" mr classical pop publie dans potential invention verse ( des publications sur un meme theme dans un lieu de publication parallele) mme musicienne bookmark ce que elle aimes, epingle le dans la page d'accueil, recois/envoie sms/appel telephonique/email de tes bookmarks (moments partagés en photo, art local, repas partagés)",'2');
insert into scene (texte, chapter_id) values (" repere : mme musixienneient de rencontrer mme et mr classical et trie les moments partages en photo, art local, repas partages  Se lançant dans une véritable expédition urbaine (city-expedition), mme et m classical se comporte comme un oiseau du matin, et une chouetre de nuit, hackant symboliquement sa ville d'origine grâce aux transports en commun de l'aube au crépuscule",'2');
insert into scene (texte, chapter_id) values (" repere : personne ne s'esr rencontre repere : mme et mrclassical pop sont concertiste deja avant de faire toute rencontre  Pour se protéger en ligne, mme musicienne crée un web-crawler à son image, programmé selon ses goûts musicaux",'2');
insert into scene (texte, chapter_id) values (" repere : mme musixienne a rencontre mme et me classical pop et vveut apprendre a hacker pour plus de securite en ligne, parfois en competition avec mmr et mr classical pop mme et me classical pop font un programme a deux : mme classical pop gere la base de donnees comme si elle filtrait les requetes sql comme si elle etait la controleuse du train et mr classical pop gere ce quon voit sur la page html comme si in regardait par la fenetre du train",'2');
insert into scene (texte, chapter_id) values ("(hacker-cafe) repere : mme musicienne rencontre mr et mme classical pop sans avoir peur deux       au debut de lexperience, comme portail pour participer a lexperience , uneapplication demande qui je suis ? (identitz numerique) elle fait choisir entre voyageur, avoir un emploi, musixien(ne) ou sportive et remplir des informations pour avoir un pass dans chaque profil et participer a lexperience (go-for-adventure) repere : mme et mr classical viennent darriver mais mme musicienne cree une application pour rendre des aventures possibles, voire une aventure possible sur les reseaux sociaux  mme et me classical pop font la fete car leur adresse ip est selectionnee (http-party) repere : mme et mr classical font la fete sans se xonnaitre mme classical pop prepare un voyage long courrier robuste (sturdy-long-haul)",'2');
insert into scene (texte, chapter_id) values (" mme musicienne utilise un projet Un projet interactif pour choisir ta propre stack technologique et vivre une session “dusk till dawn” dans un environnement urbain ou naturel (promenade-stack-selector) et une autre application regional application , application pour une région seulement, qui a un lieu (the-stacks-speaks)",'2');
insert into scene (texte, chapter_id) values (" repere : mme musicienne apprend a connaitre mme etmr classical pop durant de longues nuit de programmation ou developpement web dans le 2e episode ou a leur 2e grande arrivee en france mme musicienne publie dans AI tembe : (time-travel-stack-explorer) : AI Tembe est une application d'assistant vocal intelligent et d'automatisation ultra-personnalisée, fortement ancrée sur l'identité locale et régionale de l'utilisateur",'2');
insert into scene (texte, chapter_id) values (" repere : mme et mr clqssical pop sont dans la region mais pourrait vouloir briller dans une region etrangere",'2');
insert into scene (texte, chapter_id) values (" elle cree une application pour les aider a sadapter au marche local dans nimporte quelle region, voire a letranger  mme musicien poste sur un blog comme si elle utilise un practice bullet pen, elle utilise la gem faker sur rails, elle poste sur des animal zoo, travel mmountain, cartoon, quelle a deja vus",'2');
insert into scene (texte, chapter_id) values (" elle liste les vpn, tor, appareil connexion, quelle connait et qui vont servir pendant tous les voyages",'2');
insert into scene (texte, chapter_id) values (" elle i tegre un social network avec un amzon english detector (detecte si tes' une fille/un garcon qui parle anglais pu pas), un translator, des ais working at summary, voir qui a un job au pays de la msuique",'2');
insert into scene (texte, chapter_id) values ("(amazon-rails-gem) repere : mme musixienne fait un blog de voyages mais fais une carte de la situation actuelle , ou de la potentielle cyber attaque qu'il pourrait y avoir avecmme et mr classical pop   mr classical pop cherche a génèrer une route (un itinéraire de voyage) totalement unique et éphémère grâce à une IA",'2');
insert into scene (texte, chapter_id) values (" (ai-digital-parameter-gps) ",'2');
insert into scene (texte, chapter_id) values (" Dans la ville de départ , il y a des fausses radios où mr classical pop répond aux interviews à la radio, et où il rentre en compétition avec des artistes qui ont un faux Artist ID sur les radios",'2');
insert into scene (texte, chapter_id) values (" (ai-experience-artist-id) Mme classical pop est half-a-medium , elle visualise beaucoup de gens et des informations sur les gens la nuit, et connait un grand réseau de gens pour savoir qui fait quoi, qui parle à qui",'2');
insert into scene (texte, chapter_id) values (" on pose un challenge a mme et mr classical pop : challenge en 24h ou de l'aube au crepuscule d'utiliser des transport avec le gps, publier photos , publier des sport quotes, publier des tweet avec le sport hashtag , aller à la disco, travel (disk-till-dawn-out-of-home)  repere : au 2e episode on donne les missions a mme et mr classsical pop de passer de longues nuit ensemble pour apprendre a se connaitre dans laventure du developpement web  mme et m classical pop ou mme musicienne publish whatever , choose your stack These travelers have chosen their own stack — front-end, back-end, database — and used it to speak, wander, and leave traces (choose-your-own-stack)  mme musiciennea un projet d'application numerique Tu es un verse traveler et verse vendor : tu explores les mondes numériques tout en partageant et vendant tes créations",'2');
insert into scene (texte, chapter_id) values (" Ton objectif ? réduire les dépenses du foyer (voyage-application-numerique) repere : mme et mr classical pop diivent se promener dans les marches de la ville et donner des concerts  mme et mr classical et mme musicienne participent a Une aventure hybride entre code, musique, sécurité, et narration interactive, où tu incarnes un personnage hors norme dans un univers qui mélange CLI, infiltration créative et exploration des réseaux",'2');
insert into scene (texte, chapter_id) values (" Tu peux incarner :un samouraï,un écrivain,ou un pirate",'2');
insert into scene (texte, chapter_id) values (" L’aventure se joue dans un terminal ou command line, comme une bataille navale en temps réel, où chaque commande est un mouvement, une attaque, une création ou une stratégie",'2');
insert into scene (texte, chapter_id) values (" repere : mme et me clsssical pop et mme musicienne peuvent commencer a rentrer en competition",'2');
insert into scene (texte, chapter_id) values ("      au début, mme musique veut créer des trousseaux de login dans tous les réseaux sociaux, et diffuser elle même des rumeurs pour aller contre mme et mr classical pop",'2');
insert into scene (texte, chapter_id) values ("      de laube qu crepuscule en France : de laube au crepuscule en France il a leur a ete confie d'avoir un job de prendre souvent le train, de continuer de decouvrir la musique, de faire des concerts, ou dorganiser des vouages",'2');
insert into scene (texte, chapter_id) values (" Le violon se transforme en un capteur sensitif, un véritable diapason-crystal explorant les lieux invisibles",'2');
insert into scene (texte, chapter_id) values (" repere : mme musicienne ou mr classical pop font du codage et peuvent decouvrir leur instrument de musique  ",'2');
insert into scene (texte, chapter_id) values ("Elle décide de quitter son foyer (out-of-home), observant les affichages publicitaires sur les bus, munie d'une fausse carte d'identité et d'un faux job de couverture",'2');
insert into scene (texte, chapter_id) values (" repere : mme et mr classical se revendiquent commle invincibles, avoir mal au doigt et cest eux qui joue au troisieme billet dabion ou episode a destination de la France      mme et mr classical pop creent une IA de eux meme quil diffusent sur les reseauw sociaux pour tester les effets de rumeurs avant de passer a laction sur ce quils peuvent faire",'2');
insert into scene (texte, chapter_id) values ("  mme musicienne voyage plus au jour le jour et mme classical pop comme si elle recherche la celebrite",'2');
insert into scene (texte, chapter_id) values (" ca va determiner leur cohabitation",'2');
insert into scene (texte, chapter_id) values (" mme et mr classical pop qui vont programmer sur rails on est plus a l'aise, mme musicienne qui va programmer python va devoir essayer de sentrainer hors de sa zone de confort",'2');
insert into scene (texte, chapter_id) values (" repere : mme et mr classical sint eevenus des usa pour la 3e et les modes de survie et les evenements vont devenir surreels  un codeur rails et python revele sur le web le back end (les secrets) d'habitant - voyageurs qui ont 2 mode de voyage : python (comme un animal de la nature, day 2 day travel qui voyage au jour le jour) or rails (comme un mode de transport que tu dois reserver, tout voyage, et que tu recherche la celebrite pendant une tournee",'2');
insert into scene (texte, chapter_id) values (" repere : cest le moment ou ils se revendique invincibles, mme musicienne programme au jour le jour pour vivre comme un animal de la nature qui vit au jour le jour  mme musicienne postule au pays de la musique sans savoir ce qu'elle pourra y trouver comme situation (python-baxkend-apply)",'2');
insert into scene (texte, chapter_id) values (" repere : mme et mrclassical pop ont rencontre mme musicienne maiis elle ne sait pas de quoi ils sont capable dans les situation de voyage ou aventure repere : mme et mr classical pop veulent former a deux la fondation du pays de la musique mr classical pop cree un alter digital id qui a confidence, focus, etc (ai-digital-id) ( alter ego d'IA qui parle mieux anglais que lui, parle mieux mieux que lui, est plus rigolo que lui, etc)    voyageur-nouveau-pays : mmes et mr classsical pop font un premier voyage en terre inconnue( un pays etranger qui sappele aussi le pays de la musique pour faire peur aux gens)",'2');
insert into scene (texte, chapter_id) values (" Ils trouvent un logement a louer dans un quartier dune ville dun pays etranger",'2');
insert into scene (texte, chapter_id) values (" mais le pays de la musique est sur plusieurs territoires plusieurs quartier de ville et de pays font le pays de la musique avec des gens venis du monde entier",'2');
insert into scene (texte, chapter_id) values (" Ils vont au pays de la musique a letranger car il veulent gagner de la popularité et pour leur carriere",'2');
insert into scene (texte, chapter_id) values (" ce qui devient difficile est quils doivent etre indestructibles en musique , et qu'ils recoivent plus de pression sur la musique",'2');
insert into scene (texte, chapter_id) values (" ils se retrouve la entre plusieurs competitions de musique et de sport",'2');
insert into scene (texte, chapter_id) values (" c'est la premiere periode difficile quils ont traverse entre la gestion du foyer, avoir un job, et la competition de sport ou musique de laube au crepuscule",'2');
insert into scene (texte, chapter_id) values (" repere : dans le 2e episode ils essaient de cogabiter sans texhnologie additionnelle ou IA avec comme regle de syrvivre en restant loin de leur foyer, en jouant de la mysique comme si ils partaient a laventure  Les premieres rumeurs sur mme et m classical pop sont que mme musicien e les a hackes sur les resezuw mais ils ont p'une enorme pression par rapport a ca, et ne peuvent pas laisser dire jne rumeur",'2');
insert into scene (texte, chapter_id) values (" Ils font tout pour rentrer dans la competition de musique et hacker le plus de gens",'2');
insert into scene (texte, chapter_id) values (" Bienvenue dans le monde de la musique ",'2');
insert into scene (texte, chapter_id) values (" Pourquoi la musique est-elle intrinsèquement liée à notre biologie ? mme classical pop active ce qu'on peut appeler les 7 merveilles de l'esprit, notamment le Cœur (pulsation biologique) et la Mémoire (encodage temporel)",'2');
insert into scene (texte, chapter_id) values ("  Le BPM & Le Cœur : La musique s'aligne sur notre rythme cardiaque",'2');
insert into scene (texte, chapter_id) values (" Elle peut apaiser ou exciter par simple résonance",'2');
insert into scene (texte, chapter_id) values ("  Le Rythme & La Mémoire : La structure répétitive de la musique est le meilleur entraînement pour la plasticité cérébrale",'2');
insert into scene (texte, chapter_id) values (" Jouer d'un instrument renforce les connexions entre les deux hémisphères",'2');
insert into scene (texte, chapter_id) values ("  Les Nuances & Le Caractère : La capacité d'un musicien à passer du pianissimo au fortissimo reflète la gestion des émotions et de l'empathie",'2');
insert into scene (texte, chapter_id) values (" repere : mme classical pop active les merveilles de lesprit comme un tyran au 3e episode quand elle veut faire tout chambouler mais on les connait au 2e epusode  repere : au 2e episode il y a des premonition ( jeux de carte,captations de radio) que la verite nue va exploser dans un contexte de news agite, et que lescevenements peuvent prendre unautre tournant avec mme et mr classical pop sils viennent en france pour diffuser de la musique  mme et mr classical pop connaisse des cyber-traveler : cyber star qui ont data, devices,password, data, conversations, digital identity",'2');
insert into scene (texte, chapter_id) values (" repere : les cyber traveler sont des agent secret qui les aide a trouver des scenes ou endroits ou jouer mme et m classical pop ecrivent dans leur blog appelé Mme et M classical pop une confession cryptée qu'ils deviendront les musiciens indestructible dans la France entiere",'2');
insert into scene (texte, chapter_id) values (" ils signent toujours nous sommes des musiciens indestructibles",'2');
insert into scene (texte, chapter_id) values (" mais leur succès attire l'attention des hackers (anonyme), agences de communication, fans obsessionnel et gouvernement curieux (France et USA) quand il ont publié une video ou il chantent pnous sommes les musiciens indestructible et la vidéo a eu beaucoup de vues",'2');
insert into scene (texte, chapter_id) values (" pour échapper à cette surveillance, il publient depuis des lieux improbables (supermarché, parc, restaurant, bibliotheque, hotel, bus, train,toilette d'aeroport, toilette publique), changer constamment d'idetité, utiliser des VPN en cascade, brouille le pistes",'2');
insert into scene (texte, chapter_id) values (" repere : cest le debut de hacks et popularite dans le 3e episide  Une identité particulierement etrange est quand mme classical pop a le metier de sportif professionnel /entraineur dans un poste ou elle a postulé repere : debit du 3e episode , mme classixal pop se prepare a devenir un tyran  pour mr classical pop, the most important product, idea, building for a company est son instrument de musique et la publication des prestations sur scene ou des videos de musique (flag-ship-company)",'2');
insert into scene (texte, chapter_id) values (" mr classical pop sait comment hacket une oartition et regarder un concerto sur une video (score-live-concerto)",'2');
insert into scene (texte, chapter_id) values (" repere : quand mme classical commence a savoir hacker ou etre populaire par elle meme , il faut que mr classical pop ait dautres occupations   mme m classixal pop, et mme musicienne entrent dans une simulation urbaine ou un système de gestion où la culture (son/image) est omniprésente : on y gère des paparazzis, des exigences de stars (riders), et des intrigues de couples célèbres",'2');
insert into scene (texte, chapter_id) values (" -🌎 Le Filtre Linguistique & Médiatique Anglais Natif : C'est la langue source unique pour toutes les News et les Rumeurs",'2');
insert into scene (texte, chapter_id) values (" repere : au 3e episode mme etmr classical pop developpent leur alter ego qui parlent mieux anglais queux, gere mieux la celebrite, les paparazzis queux, etc",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop devient un apres lautre : traduxteur dune langue orientale professionelle, sportif professionelle, agent daccueil, vendeuse de vetement et depicerie, gendarme,peogrammeuse, hackeuse, mme musicienne try to get a scoop (a news exclusive) as if she were a journalist, but it sounds like she ´s 'getting a scope' (understand or see the bigger picture in a relationship)",'2');
insert into scene (texte, chapter_id) values (" (scoop-lingo) repere : au 4e episode apres tous les bouleversement, mme musicienne ne sait plus ou elle en est de ses relations  apres cette periode , la violoniste veut se rendre au pays de la musique pour prendre ses distances et une pause des aventures mais mme classical pop veulent la rejoindre a letranger, et apres quelque bonne periode , sen suit une periode difficile",'2');
insert into scene (texte, chapter_id) values ("  repere : episode 3 il y a des aller retour a letranger ou en france  mme musicienne utilise Race Pace, A multi‑dimension race tracker for music, sport, and professional life—not just about speed, but about confidence, reflection, and the mental images that shape performance (race-pace)",'2');
insert into scene (texte, chapter_id) values (" repere : meme dans la pression du bureau ovale, mme musicienne essaie detre in sync avec mme et mr classical pop avec des images de sport, un mode de vie",'2');
insert into scene (texte, chapter_id) values (" après une partie de capture de flag, comme elle n'estpas contente des cohabitations précédentes, elle tente une nouvelle colocation",'2');
insert into scene (texte, chapter_id) values (" En même temps qu'elle met al pression sur tout son quartier, dans son propre foyer, chacun(e) a un drapeau et court pour son pays (en sport, musique)ou ce qu'on veut",'2');
insert into scene (texte, chapter_id) values ("  mme et m clasical joue chacun un role sur les reseaux sociaux (influencer-trip)",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop pourrait essayer de devenir une woman-in-tech",'2');
insert into scene (texte, chapter_id) values (" repere : au 3e episode mme classical pop se prepare a decenir un tyran qui sait faire neaucoup de choses, indestructible  mme classical pop travaille dans une Boutique HTML contextuelle avec IA Social Engineer , une boutique HTML interactive où chaque vendeur est une IA capable d'Adapter ses réponses selon la langue, la ville (social-engineer-ai) au debut, mme classical pop propose a qui veut de choisir entre une pop star ou une amie a inviter au pays de la musique, apres quoi une fille peut voyager dans un endroit au choix (en train)",'2');
insert into scene (texte, chapter_id) values ("( commit-rails) repere : au 3eepisode , mmeclassixal pop se prepare a augmenter sa popularite dans les eegions du monde entier de son choix repere : cest le moment dans le 3e episode ou chaque soiree devient un cauchemzr ou mme classical pop renrre dans beaucoup ee foyers, seme la zizanie, et le jour et matin rt certains soirs mme et mr classical fobt le gouvernement du bureau ovale mme musicienne pourrait s'appeler madame-http, elle connait les request 404, 500, etc, et les programming langages differences (les langages informatique utilisent des composants materiels differents)",'2');
insert into scene (texte, chapter_id) values (" mme classical pop collectionne les articles de musique tendances (bookish-trend-music-article) repere : au 3e episode  mme musicienne promener dans un carousel de perspectives, une collection de photos, ou un quartier virtuel, où chaque donnée est une histoire, chaque image une intention, chaque coordonnée GPS une possibilité",'2');
insert into scene (texte, chapter_id) values (" (that-sportsperson)",'2');
insert into scene (texte, chapter_id) values (" Un simple post comme Mme musicienne devra changer de métier, elle ne savait pas jouer ça, a fait un chos médiatique",'2');
insert into scene (texte, chapter_id) values ("Des IA, agences, fans tentent de les analyser",'2');
insert into scene (texte, chapter_id) values ("  Mme et mr classical se placent dans un appartement ou toutes les allées sont controllees par reconnaissance faciale",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop commence a regarder comment elle peut faire de lingenieriie sociale (learn-how-to-be-a-social-engineer) et commence a sinteresser au sport (sport-competition)",'2');
insert into scene (texte, chapter_id) values (" elle tient un compte de photos de sport (basketball-team) ou elle publie des photos en train de faire des photos, donner des nouvelles/de modifier une information sur elle, ou de dire bonjour dans une photo",'2');
insert into scene (texte, chapter_id) values (" repere : debut 3e episode  mme et mr classical pop utilisent World Class Performance est une plateforme révolutionnaire permettant aux artistes, groupes et équipes musicales de publier leurs performances vidéo avec un contrôle total sur leur visibilité (world-class-performers) ils veulent aussi utiliser assistant global connecté : Un assistant intelligent en mode interprète, capable de traduire en temps réel, suivre les informations mondiales, gérer les publications (assistant-global-didactic) trouver la ou habiter, etc",'2');
insert into scene (texte, chapter_id) values (" repere : debut du 3e episode  mme musicienne poste des photo du pays de la musique dans hometown-photos",'2');
insert into scene (texte, chapter_id) values (" au pays de la musique, tout se transforme comme si tous les cafes etaient de la musique country des usa, les sports etaient des sports aux usa",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop cree une bulletproof-company, une entreprise pare balles : application web servant de portail ou de profil d'employé pour une entreprise fictive",'2');
insert into scene (texte, chapter_id) values (" mme classical pop ajouter des voitures à vendre et ajouter une xss attack dans l'annonce (cybersecurity-xss), fais Test intrusion python (serveur python) , ecrit Mes hacker tricks sur Ubuntu avec le bluetooth et la connexion internet (pen-test-python) et repand des rumeurs (elle hacke dans leur bureai des gens et repand des rumeurs dans la rue au journal tele)",'2');
insert into scene (texte, chapter_id) values (" mme musicienne qui va a son job de 9 a 5 parle de la cybersecurite (from-9-to-5-security) dans ses emails, a la banque",'2');
insert into scene (texte, chapter_id) values (" repere : vers 3e episode, quand on entre dans la periode la mlus difficile, mme classical pop fait comme si tout est un etranger sur le reseau, elle repand des rumeurs sur mme musicienne  mr classical pop cherche des maisons comme a beverly hills en france (beverly-hills)",'2');
insert into scene (texte, chapter_id) values (" mme classical pop veut participer au concours de generated fake miss AI avec sa photo et des generations par l'IA (contest-ai) et sinspire de echo-stage : EchoStage is a creative framework for building expressive digital profiles—whether real, fictional, or somewhere in between",'2');
insert into scene (texte, chapter_id) values (" Inspired by the aesthetics of performing arts, EchoStage lets anyone publish a person that’s decorated, stylized, and powered by LLM-generated data",'2');
insert into scene (texte, chapter_id) values (" repere : dans le 3e episode, et aussi dans le 2e , mme classical pop ne laisse personne etre plus stylise ou maquillee quelle sur scene",'2');
insert into scene (texte, chapter_id) values ("  mme musicienne commence a ecrire bangtan news et bulletproof, le blog dune groupe de musique",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop reussit deja a postuler avec sa voix, des emails et sms pour un job",'2');
insert into scene (texte, chapter_id) values (" (postuler-18) repere : dans le 3e episode on entend la voix/ on voit le visage de mme classical pop partout mme musicienne cree une application qui permet de créer des prompts enrichis par des données personnelles, géographiques et culturelles",'2');
insert into scene (texte, chapter_id) values (" Il est conçu pour générer des interactions plus naturelles et localisées, notamment pour des agents d’accueil ou des assistants virtuels",'2');
insert into scene (texte, chapter_id) values (" (prompt-ai-region) repere : dans le 3e episode, mme classical pop veut creer un agent virtuel quelle laisse entrer dans les foyers qui a son visage et sa voix, qui repond aux gens comment vivre dans le pays dela musique, si ca les interesse de recevoir une visite delle  mme musicienne cree jeu de cartes prédictif : Cartes temporelles : Chaque carte est liée à un timestamp et peut être utilisée pour prédire ou raconter un futur possible (timestamp-oracle) repere : dans le 3e episode, mme musicienne cree plein de sortes de moyens pour mettre fin a la situation  mme classical pop est un faux employe au pays de la musique comme on peut pas l'employer si elle peut si bien hacker la musique",'2');
insert into scene (texte, chapter_id) values (" Elle est hackerde la musique(amazon-tea) repere : dans le 3e episode, mme classical pop cachhe ce quelle sait faire, pour jouer son role, ou gagner plus de popularite  au debut, mme musicienne tient un social-media-cook-book pour comprendre ce qui se passe sur les reseaux sociaux",'2');
insert into scene (texte, chapter_id) values (" repere : dans le 3e episode mme episode essaie comprendre la situation pour y mettre fin  mme classical pop commencer deja outil de simulation d'actualités basé sur l'IA, capable de croiser des données (personnes, lieux, objets) pour générer des scénarios médiatiques et les filtrer finement dans le temps pour deviner ce qui va se passer selon les futur evenements",'2');
insert into scene (texte, chapter_id) values (" repere : dans le 3e episode , mme classical pop cree plus de moyen piyr rendrela situation plus chaotique  mme classical pop veut se tranforme en sportsperso , o musician, ou singer on tv, actor model, in hit music, or tv video, that says gossip (actor-model-gossip), mme classical pop selectionne des identites numeriques dans son quartier et envoie un trip digital guide, ou elle jouerait un social facilitator, pour demander a qui veut : quel voyage font de toi une amazon (qu'as-tu dans tes trips' (voyages) ou tripes (gust)) (amazon-trips)",'2');
insert into scene (texte, chapter_id) values (" (pour construire une communaute de filles ou femmes)  mme et mr classical pop veulent faire un portail  de partition ou il ya des repertoires de partitions et ou ils utilisent l'IA pour chercher des partitions facilement",'2');
insert into scene (texte, chapter_id) values (" repere : a ce moment dans le 3e episode , mme musicienneva ressentir trop de pression par rapporta la musique, mais elle va tenir la pression  a letranger, mme classical pop veut accueilir des musiciens dans son pays (le pays de la musique) et trouve un premier job au bureau daccueil",'2');
insert into scene (texte, chapter_id) values (" mme classical pop cree une serie fake sms email, postcard, social media acount, letter, etc, in foreign/not foreign language pour de preparer a deranger le quartier (i18n-fake-sms)",'2');
insert into scene (texte, chapter_id) values (" repere : a ce moment quand la tension devient de plus en plus dur a letranger, mme musicienne commence a ne plus donner de nouvelle a sa famille  mme musicienne postule pour travailler au pays de la musique (apply-enjoy) sans en reparler a sa famille",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop cree un amazon-cafe ou elle veut Text Sentiment & Gender Reference Analyzer pour tout ce qu'elle voit que les gens postent sur les reseau",'2');
insert into scene (texte, chapter_id) values (" À l'étranger, Mme et Mr Classical Pop se transforment en un couple d'influenceurs redoutables issus d'une prestigieuse école de musique",'2');
insert into scene (texte, chapter_id) values (" Leur relation est intense, dramatique",'2');
insert into scene (texte, chapter_id) values (" Ils cherchent à « tirailler le cœur » de tous ceux qui ne partagent pas leur dévotion artistique",'2');
insert into scene (texte, chapter_id) values (" Mme et mr classical pop organise les plus grands concerts de musique pop et classique et salignent avec les plus grandes stars de pop et de classique dans les medias",'2');
insert into scene (texte, chapter_id) values ("(align-my-star) pendant un voyage dans un autre pays etranger en amerique ou asie dans une grande ville, mme classical pop avait envoye sur mme musicienne un(e) espion (e) (my-spy) pour ne pas perdre de vue mme musicienne",'2');
insert into scene (texte, chapter_id) values (" repere : pendant cette periode , dans le 3e episode, il y a quelque allerretour dans des destinations etrangeres ou autre destination etrangere, mais ils reviennent a leur point de part ou a leur premiere destination a letranger  repere : a ce moment dans le 3e episode, Le conflit émotionnel au sein de leur foyer prend une dimension presque géopolitique : a letranger , mme musicienne conserve un code-cookbook mais elle l'utilise tres peu",'2');
insert into scene (texte, chapter_id) values ("(network-program-recipes) a l'etranger, mme classical pop conserve ses requetes de recherche sur internet et fait un tour du monde sur internet autant quelle voudrait avoir plus dinfluence dans sa region",'2');
insert into scene (texte, chapter_id) values (" a letranger mme musicienne toent un cookbook de llm ou ai",'2');
insert into scene (texte, chapter_id) values (" a l'etranger mme classical pop tient un bullet-blog public sur la musique, son carnet perso piur la musique (bulletproof-anonymous) et une formation de musique (beyond-practicing-buro) a l'etranger , mme classical pop databases qui se crée à chaque billet d'avion , une entreprise differente/un projet different, un base de données entiere differente pour 5 ou 6 billets aller retour",'2');
insert into scene (texte, chapter_id) values (" mme classical pop espionne mme musicienne et hacke ses script pour hacker",'2');
insert into scene (texte, chapter_id) values (" repere :3e episode      la musicienne organisent un faux discours à l'ONU, déclamé en plusieurs langues étrangères, pour tenter d'apaiser leurs querelles",'2');
insert into scene (texte, chapter_id) values ("     Ils se disputent symboliquement avec d'autres pays, transformant leur propre salon en un Bureau Ovale miniature, prétendant être l'horloge politique et culturelle du quartier",'2');
insert into scene (texte, chapter_id) values (" Leur salon a des violons suspendu au mur, des portrait photo d'eux en grand, une grande horloge, la grande carte d'un pays ou ils se croient etre une differente",'2');
insert into scene (texte, chapter_id) values ("     repere :3e episode     en manque d'inspiration mme classical pop veut utiliser les transformers pour publier des articles de journaux, des journaux télé, des posts sur les réseaux sociaux, publier des photos et paraitre plus invincible dans les journaux",'2');
insert into scene (texte, chapter_id) values ("     à un moment, la situation devient presque impossible, mme classical s'est emparee de tous les reseaux sociaux, et comptes pour utiliser des transformers d'IA et publier sur les reseaux sociaux, sans laisser d'autre choix à personne pour utiliser les réseaux sociaux comme elle le fait",'2');
insert into scene (texte, chapter_id) values (" Elle laisse le seul choix à mme music qui fait de qui lui reste à faire : n'utiliser que des libraries, namespaces, extensions, modules, etc",'2');
insert into scene (texte, chapter_id) values (" pendant sa colocation avec mme ou mr classical pop",'2');
insert into scene (texte, chapter_id) values ("     Une alerte qui les a particulierement marqués est qu'ils doivent activer des alerte pour vivre au rythme d'un QG, et jouer de la musique",'2');
insert into scene (texte, chapter_id) values ("     Mme musicienne devient un repere humain",'2');
insert into scene (texte, chapter_id) values (" En découvrant le QG, elle a pas de réactions, mais elle découvre que la situation est très tendue, elle se prépare à une periode difficile",'2');
insert into scene (texte, chapter_id) values ("     Elle va habiter avec Mme etM classical pop pendant cette periode, ils verront si cette periode est vivable",'2');
insert into scene (texte, chapter_id) values ("     repere 3e episode     Mme Classical Pop, quant à elle, travaille en chœur exclusif avec d'autres artistes féminines, créant une tension compétitive acharnée",'2');
insert into scene (texte, chapter_id) values ("  Troisième partie : L'Exil Acoustique et les Rumeurs d'État  Cette longue période à l'étranger s'avère la plus sombre et la plus complexe",'2');
insert into scene (texte, chapter_id) values (" Le groupe subit la pression de l'anonymat et de la paranoïa",'2');
insert into scene (texte, chapter_id) values (" Le Jeu Intérieur de la Musique  Pour tenir le coup, la Violoniste tient un journal de bord anonyme (bulletproof-anonymous) où elle planifie ses sessions d'entraînement intensives(du cardio et de lamusculation, abdos, pompes, dips)",'2');
insert into scene (texte, chapter_id) values (" un extrait de ce journal : aujourdhui j'ai fait 30 minutes de velo",'2');
insert into scene (texte, chapter_id) values ("",'2');
insert into scene (texte, chapter_id) values (" Sur son blog, mme classical pop publie des articles sur le « inner game » de la musique (mon-musicien-pareballes) (par exemple il faut utiliser la visualisation mentale que les images sont vive",'2');
insert into scene (texte, chapter_id) values (" pour son premier concert avec mme classical pop, elle allait tout gacher, mais pour la deuxieme partie elle a mieux fait en visualisant",'2');
insert into scene (texte, chapter_id) values (" Elle utilise Lilypond (stage-score) pour générer ses partitions et pousse le vice jusqu'à étudier les langages informatiques sécurisés utilisés par la nasa (python) ",'2');
insert into scene (texte, chapter_id) values (" La nasa l'inspire depuis qu'elle a voyagé dans des pays étrangers",'2');
insert into scene (texte, chapter_id) values ("  trois musiciens voyage avec ses instruments (musical-instrument-travel), participe à des compétitions d'endurance (sport-competition) (elle a gagné la course de 5km une fois en France il ya 10 ans) repere : dans le 4e episode quand tout est fini, mme musicienne reecrit son histoire  mme classical pop et la Violoniste devienne des véritable sprinteuse du violon (runner-fiddle), enchaînant des morceaux d'une difficulté athlétique de capitale en capitale (la gigue de bach est difficile, une ville ou elle ont ",'2');
insert into scene (texte, chapter_id) values (" brillé est paris) repere : dans le 2e episode, pour se rencontrer, elle comparent les biveaux de violon, le morceaux quelle savent jouer etc",'2');
insert into scene (texte, chapter_id) values (" L'Usine du Prestige  Mme et Mr Classical Pop s'allient à elle sur Rails (mme-m-classical-pop)",'2');
insert into scene (texte, chapter_id) values (" Leurs valises de diplomates contiennent des accessoires connectés mesurés en unités internationales (travel-job-accessories) (la taille de la boite a violon, la taille d'une clé usb)",'2');
insert into scene (texte, chapter_id) values (" Ils entrent dans la pop-classic-factory, gérant des comptes secrets (@weArefakesocialaccount) sous de faux noms (comme Clean Bandits) pour masquer les coulisses de leur gloire (behind-scenes)",'2');
insert into scene (texte, chapter_id) values (" (ils ont évité le scandale d'avoir un peu mal joué dans un concert et d'etre des bandit de la scene) Mme classical pop et mme musicienne commence a se dmander quel sport tu prefere faire , quelle quote preferes tu, à propos d'un sport, quelle quote astu moins de difficulte par rapport à un autre sport/une autre personne à représenter/ à correspondre (sport-job) (you don't fight against opponent, but against the game of basketball) repere : mme classical pop et mme musicienne se parlent mzme si la situation est tendue ",'2');
insert into scene (texte, chapter_id) values ("  Partout à l'étranger, le visage de la mme et mr classical pop est placardé sur les murs (out-of-home-face) (la tete de mme classical pop en gros plan sur un gros panneau avec ecrit concert de violon le mois prochain)",'2');
insert into scene (texte, chapter_id) values (" Dans la ville dy pays de la musique, il ya beaucoup d'affichages dehors et mme musicienne a une fausse carte d'identité et un faux métier (une double vie) (Sunya Nonyme) , elle est web designer en python(animated-broccoli)",'2');
insert into scene (texte, chapter_id) values (" ELle code le site d'une école de musique",'2');
insert into scene (texte, chapter_id) values (" repere episode 3  Mme classical pop se prend pour une grande compositrice avec qui il faut que ecrire des lettre signé par des notes de musique, ou coder ce qu'on veut dire en langage HTML/HTTP avec qui on peut pas parler directement, il faut coder ce quon doit lui dire",'2');
insert into scene (texte, chapter_id) values (" ",'2');
insert into scene (texte, chapter_id) values ("Ils pirate des partitions en direct pour saboter des concerts concurrents (score-live-concerto), étudie la résonance de leur instrument (violin-study) et inscrivent la violoniste comme interprète aux Nations Unies (un-interpreter)",'2');
insert into scene (texte, chapter_id) values (" Mme classical pop est entré sur une scene à la fin du spectacle pour dire que la violoniste avait piraté des partitions sur le web avec des annotations pour savoir jouer",'2');
insert into scene (texte, chapter_id) values (" repere : la situation est toujours tendue dans le 3e episode  Sur l'echo-stage, propulsé par des profils générés par IA, ils deviennent des World Class Performers",'2');
insert into scene (texte, chapter_id) values (" dans le pays de la musique, mme classical pop se prépare",'2');
insert into scene (texte, chapter_id) values (" Avant de se consacrer pleinement à son art, elle passe un test pour devenir gendarme (gendarmes)",'2');
insert into scene (texte, chapter_id) values (" La République de l'Amour Cruel  Ils finissent par basculer dans la republic-of-music, un territoire sans frontières géré par les émotions, devenant les tyrans bienveillants des sentiments de leur public",'2');
insert into scene (texte, chapter_id) values (" par exemple se sentir content/gentil quand on entend de la musique classique",'2');
insert into scene (texte, chapter_id) values (" UN rituel musical est de jouer de la musique",'2');
insert into scene (texte, chapter_id) values (" pendant les voyages il y a des controles musicaux aux frontieres (musical-border-control) (boite d'instrument de musiqie, disque, dvd de concert, album disque, musique sur mp3)",'2');
insert into scene (texte, chapter_id) values ("  Connectés par leurs téléphones portables comme un orchestre numérique (supreme-symphony), chaque requête HTTP qu'ils envoient devient une note de musique, chaque trajet un raccourci de Apple",'2');
insert into scene (texte, chapter_id) values (" Une mélodie HTTP est comme si chacun fait son métier/sa vie",'2');
insert into scene (texte, chapter_id) values ("  Mme musicienne va à la gum , and au training center quand connectée, pour plus tard voyager (amazon-academy)(abdos, dips, pompes, barre, cardio velo, course, nager) mme classical pop emmene mme musicienne au port via un raccourci apple, pour lui montrer un magasin de vetements",'2');
insert into scene (texte, chapter_id) values (" mme classical pop a beaucoup d' Information about country/regions d'un pays pour commencer un nouveau magasin ou une nouvelle entreprise (info-country)  mme classical pop utilise la master-connection pour localiser un telephone",'2');
insert into scene (texte, chapter_id) values (" mr classical pop utilise cyber-hacker pour savoir si ses videos ont un bon commentaire (il a eu well done)",'2');
insert into scene (texte, chapter_id) values (" mme classical pop commence a envoyer des series de spoof-messages (comme who's unstoppable here? me not you",'2');
insert into scene (texte, chapter_id) values (" Do you know me , my name is Mrs Classicla pop",'2');
insert into scene (texte, chapter_id) values (" Await my visit",'2');
insert into scene (texte, chapter_id) values (" à plusieurs numeros de téléphone du quartier",'2');
insert into scene (texte, chapter_id) values (" des gens ont eu peur et ont attendu la visite de mme classical pop, en ont parlé autour, ont contacté mme classical pop pour l'inviter) et a connaitre de la physical-security et de la cyber-security",'2');
insert into scene (texte, chapter_id) values (" elle poste dans bulletproof-job, hacker-magazine et mycybernews",'2');
insert into scene (texte, chapter_id) values (" mme musicienne sinteresse au pen-test et cree une fausse IA ou on peut calculer quelque chose , traduire quelque chose, ou prendre le metro ou un moyen de transport en commun, choisir un langage de programmation et ecrire le début d'un script",'2');
insert into scene (texte, chapter_id) values (" la course contre la montre      Dans une course contre la montre, Mme Classical Pop va utiliser tout ce qu'elle sait du SEO, SEA, stratégies digitales réseaux sociaux pour entrainer tout le monde dans une course contre la montre, et faire basculer les statistiques de réseaux sociaux de son côté en ayant des techniques black hat",'2');
insert into scene (texte, chapter_id) values (" Sauf M",'2');
insert into scene (texte, chapter_id) values (" Classical Pop, elle voudrait entrainer des amazones au sport, mais dans une course contre la montre, ou tout le temps est chronométré, les actions, les records sportifs, etc",'2');
insert into scene (texte, chapter_id) values ("     sans qu'elle le veuille vraiment, ça fait une compétition sportive entre pays, où elle court en relai pour son pays, et d'autres pays courent en non relai, où en relais si c'est possible",'2');
insert into scene (texte, chapter_id) values ("  Les Rumeurs du Bureau Ovale  The republic of music and love : au pays de la musique a l'etranger, la periode qui suit est difficile comme mme et mr classical pop emploient beaucoup de moyens pour diffuser des rumeurs ou rester tres influents dans leur region et qui remontent jusquau bureau ovale (m classical pop a été hacké dans son bureau)",'2');
insert into scene (texte, chapter_id) values (" tous les musiciens de la region traversent une periode intense de pratique musicale, sportive ou autre activite de son job en plus de la gestion du foyer (il faut se lever aller a son travail et attendre la visite de mme classical pop le soir, gerer le foyer, etc",'2');
insert into scene (texte, chapter_id) values (")",'2');
insert into scene (texte, chapter_id) values (" mme musicienne est une femme passionnée par le mouvement, la performance et la technologie",'2');
insert into scene (texte, chapter_id) values (" Pour moi, être “fit”, c’est autant une question de muscles que de neurones",'2');
insert into scene (texte, chapter_id) values (" (amazon-ai) (unexercice mental qu'elle pratique est to fit a model, machine learning)  repere : debut ou milieu du 3e episode : Ce qui arrive au Bureau ovale est que mme musicienne parvient a dire que mme classical pop n'est que musicienne, et que malgre tout, elle a aucun pouvoir car ce bureau ovale est un faux au bout de quelques mois de cohabitation",'2');
insert into scene (texte, chapter_id) values (" ca fait un retour en France , mais ca rend fou furieux mme et mr classical pop qui vont retourner la ou ils avaiznt invite un bureau ovale dans le meme ligemebt avec lesprit de vengeance mais ils supportent pas detre hackes, dans la deuxieme partie de lepisode ils sen suit une periode encore pluus horrible, ",'2');
insert into scene (texte, chapter_id) values (" meme si le bureau ovale a deja ete detruit, mme et me classical pop continue de vouloir terroriser avecde la musique",'2');
insert into scene (texte, chapter_id) values (" ",'2');
insert into scene (texte, chapter_id) values ("dans une ville française, Pour survivre dans l'industrie, ils utilisent un tracker de nuit (disco-tracker) en France, réinventant complètement leurs personnalités : une nationalité différente le jour, un style purement disco la nuit, changeant même leurs plats préférés selon le rythme des hits",'2');
insert into scene (texte, chapter_id) values (" mme classical pop se revele avoir un caractere francais dans le fond ce qui nest pas sa nationalite de depart",'2');
insert into scene (texte, chapter_id) values ("  (behind-scenes) mme et mt classical pop publient sur des comptes @weArefakesocialaccount et @we are bulletproof des videos de musique avec des faux credits ou il font la fete",'2');
insert into scene (texte, chapter_id) values ("  mme classical pop raconte qu'elle est agile comme une developpeuse ou qu'elle a du caractere comme le fromage de France ou comme un air de musique",'2');
insert into scene (texte, chapter_id) values ("  repere : mme classical pop a un caractere de musique comme elle vient du foyer de musique et se connecte a dautre foyer",'2');
insert into scene (texte, chapter_id) values (" cest le moment ou elle realise quels memes morceaux elle sait jouer avec dautres violoniste ",'2');
insert into scene (texte, chapter_id) values ("mme et mr classical pop prennent des vols long courrier dans beaucoup de regions du monde",'2');
insert into scene (texte, chapter_id) values (" tout le monde parle anglais à la télé , à la radio, sur les reseaux, dans les chat, etc",'2');
insert into scene (texte, chapter_id) values (" repere : au 2e ou 3e avion cest suand il y a des paparazzis au pied de ton logement le soir des ceremonies repere : langlais est la langue des paparazzis ou journalistes qui ecrivent les scoops ",'2');
insert into scene (texte, chapter_id) values ("Blogueurs en Cavale  En France, la Violoniste se prépare",'2');
insert into scene (texte, chapter_id) values (" Avant de se consacrer pleinement à son art, elle passe un test pour devenir gendarme (gendarmes)",'2');
insert into scene (texte, chapter_id) values ("      Le Grand Tournant : C'est à cet instant précis, à l'aube, que le destin s'accélère",'2');
insert into scene (texte, chapter_id) values (" Les trois personnages — la Violoniste, Mme, et Mr Classical Pop — doivent signer un pacte virtuel pour quitter définitivement leurs foyers respectifs et s'engager vers le Pays de la Musique, un territoire imaginaire et mystique où les lois physiques sont remplacées par des lignes de partitions, et les transports en communs sont collectifs (train, avion)",'2');
insert into scene (texte, chapter_id) values ("  repere : les 3 personnages se preparent a partir dans le 2e episode, plysieurs depart : depart de la gare, depart dans la rue out of the morning a laube, depart de leur chambre en voiture a laube  Une gare active son plan vigipirate avant de laisser repartir mme m classical pop et mme musicienne ensemble en voyage (legendary-digital-garden, the-glitch-station)  m classical pop veut seulement ecouter sa musique preferee , voyager a prix reduit et partager sa passion (potential-artist)       mme musicienne envoie une invitation a mme et mr classical pop : agile developer github, indie developer and musician from dusk till dawn wants to make friends on rails, with voyageur et classical pop musicians on instagram",'2');
insert into scene (texte, chapter_id) values (" repere : mme musicienne envoie une dedicace a mme et mr classical dans le 2e episode      dans la gare, mme musicienne fait un tour de cirque comme sur une piste de danse avec son instrument de musiuqe et sa gideo gagnes de la popularite sur internet",'2');
insert into scene (texte, chapter_id) values ("(my-arts)      mme musicienne veut faire choreography in AI : il y a une choreography d'IA",'2');
insert into scene (texte, chapter_id) values (" (l'IA qui fait beaucoup de calculs) et une choreography d'humain",'2');
insert into scene (texte, chapter_id) values (" (computing-machine-ai-choreography, potential-ai-sportsperson) repere : tout se decide dans le 2e episode avant de commencer a prendre un mauvais tournant dans le 3e episode  Sur le grand quai de départ, Mme classical a été interpelée par un grand groupe de fille masquée, pour savoir quelles sont ses ambitions pendant le voyage",'2');
insert into scene (texte, chapter_id) values (" ",'2');
insert into chapter (title, myorder, content) values ('Chapter 3', '3', 'content of chapter 3');
insert into scene (texte, chapter_id) values ("Mme et m classical jouent un tube de musique classique qui fait tourner la vidéo sur le web",'3');
insert into scene (texte, chapter_id) values (" après avoir gagné une partie de Capture the flag , Mme et me classical pop decident de former un qg dans leur salon, et de tout transformer en compétition musicale/sportive",'3');
insert into scene (texte, chapter_id) values ("  ",'3');
insert into scene (texte, chapter_id) values ("Le Bureau Ovale du Salon Début: Ils font semblant d’être présidents, plein de panneaux avec leurs têtes",'3');
insert into scene (texte, chapter_id) values (" Réécriture Fin-Effet: Même salon, 1 an après",'3');
insert into scene (texte, chapter_id) values (" Les affiches sont décrochées",'3');
insert into scene (texte, chapter_id) values (" Il reste 3 chaises, 3 violons, et une horloge",'3');
insert into scene (texte, chapter_id) values (" Mme Classical Pop dit: On arrête de gouverner les autres",'3');
insert into scene (texte, chapter_id) values (" On se gouverne nous",'3');
insert into scene (texte, chapter_id) values (" → Le message: le pouvoir c’était du vent",'3');
insert into scene (texte, chapter_id) values (" ",'3');
insert into scene (texte, chapter_id) values ("- à un moment mme msuic se demande si elle va utiliser un programme qui devine le prochain mot, teste toutes les possibilités, et elle devinera le futur, ou peut écrire un texte pour changer le monde, après elle se demande si l'avenir n'est pas une base de données avec tout comme dans un magasin avec des catégories",'3');
insert into scene (texte, chapter_id) values (" pour elle, les arts de la scene c'est beaucoup de partition, des emotions, ou une voix, ou des rythmes et une performances, mais la compétition est ou elle a la pression",'3');
insert into scene (texte, chapter_id) values (" ce matin , mme et mr classical pop partent à l'aventure au crépuscule",'3');
insert into scene (texte, chapter_id) values (" - les deuxieme depart à l'aube marquants est quand mme et mr classical pop et mme music voyagent en train",'3');
insert into scene (texte, chapter_id) values (" - l'autre depart qui n,'est pas daté à l'aube ou au crepuscule mias mme et mr classical pop et mme music partent dans un train ensemble apres une performance de cirque/danse de mme music, et un plan de vigipirates qui les a fait monter dans le meme train",'3');
insert into scene (texte, chapter_id) values ("  ",'3');
insert into chapter (title, myorder, content) values ('Chapter 4', '4', 'content of chapter 4');
insert into scene (texte, chapter_id) values ("mme et mr classical pop et mme musicienne essaient deja (out-of-home-chat) de jouer un reknown band chatting over a city",'4');
insert into scene (texte, chapter_id) values (" repere : dans le 4e episode quand tout va mieux, ilsessaient de reecrire leur histoire comme un groupe de musique celebre qui a une histoire avec la musique ou les instrument de musique dans des photos et en racontant repere : vers le 4e episode mme et mr classical pop et musicienne decident de fait un grand voyage dans plusieurs regions du monde avec des milieux naturels, et la ville, de connecter ue dizaine ou vingtaine de reseaux sociaux ensemble pour faire comme si ils publient les photos du monde entier en temps reel et que avec leur connexion aux reseaux sociaux et leurs messages de chat en temps reel, ils n'ont pas la barriere ou le frein de se dire 'je t'aime' dans le monde entier",'4');
insert into scene (texte, chapter_id) values (" ",'4');
insert into scene (texte, chapter_id) values ("retour en france      passee cette periode, un retour en France se fait pour calmer les tensions apres une periode difficile",'4');
insert into scene (texte, chapter_id) values ("      repere au milieu du 4e episode , la sitiation a lair de reprendre comme au debut mais ils ont appris a connaitre , et cztte fois le bureau ovale de france prend le relais, et la doctrine et la symfonie prend le relais avec le pays de la musiqueou la republique de la msuique qui avait ete invente par mme et mr classical pop      ils reviennent car pour tout le monde les conditions netaient pas remplies , mme musicienne navait pas de place dans le foyer",'4');
insert into scene (texte, chapter_id) values ("      mme et mr classical pop n'en sont plus a faire valoir leur premier concert ou faire augmenter la celebrite mais on leur a dit de retourner a lecole de musique pour calmer le jeu",'4');
insert into scene (texte, chapter_id) values (" Les Français entendent les derniere rumeur (apres m classical pop, mme classical pop est hacké dans son bureau, et ca vient a mme musicienne)      mme et mr classical pop essaient encore de gagner de la popularite en France",'4');
insert into scene (texte, chapter_id) values ("      de plus en plus proche dans la cohabiration avec mme et me classical mme musicienne tient une base de donnes wiht composer, stylle o music, piece title, and album with artist and title of track but she will choose a hobby (science, buy clothes,programming )other than music",'4');
insert into scene (texte, chapter_id) values ("  derniere fois au pays de la musique      il reste une derniere fois ou mme et mr classical pop, et la 3e musicienn est allee au pays de la musique",'4');
insert into scene (texte, chapter_id) values (" Cetait pour dire quelle nirait plus au meme cafes, parc, ou endroits publics avec autant de paparazzis",'4');
insert into scene (texte, chapter_id) values (" mme etmr classical pop sont toujours de touriste qui ont un gps, photo appareil, microphone, qui peuvent send email, faire des photos de ton village, prends le velo ou voiure, mais il s detruisent toute leur donnees de voyage",'4');
insert into scene (texte, chapter_id) values (" (commit-rails)",'4');
insert into scene (texte, chapter_id) values (" Elle abandonne là ou elle s'est promenée, là ou elle a joué, etc",'4');
insert into scene (texte, chapter_id) values ("      mme et mr classical pop sont devenus des musicien qui navigue entre 2 mondes : la musique (orchestre, musique de chambre, concerto, performance), le réseau et l’informatique (orchestration de conteneurs (network-musician)      M classical pop fait un spectacle ou de la musique de betthoven joue comme si c'est sa musique do'rigine, il se tient a la régie, , il dit je suis t",'4');
insert into scene (texte, chapter_id) values (" r",'4');
insert into scene (texte, chapter_id) values ("a",'4');
insert into scene (texte, chapter_id) values ("z",'4');
insert into scene (texte, chapter_id) values ("o",'4');
insert into scene (texte, chapter_id) values ("m ",'4');
insert into scene (texte, chapter_id) values ("",'4');
insert into scene (texte, chapter_id) values ("",'4');
insert into scene (texte, chapter_id) values (" mozart et il disparait dans la fumée )",'4');
insert into scene (texte, chapter_id) values (" • La Violoniste développe un nouveau mindset : jouer plus de styles de la musique, jouer simplement de la musique",'4');
insert into scene (texte, chapter_id) values (" • Mme Classical Pop veut devenir gendarme mais ne veut plus faire peur aux gens",'4');
insert into scene (texte, chapter_id) values (" • Mr Classical Pop se concentre sur le pop et le classique mais surtout le classique",'4');
insert into scene (texte, chapter_id) values (" mme classical pop revient sur sa region dorigine, avec la reputation quelle a eu maintenant de vouloir faire peure aux gens, elle programme beaucoup de HTML et realise les periodes qui ont ete traversee  Les Rumeurs du Bureau Ovale Francais  L'histoire se clôture par un retour technologique et politique en France à travers la symphonie-foyers",'4');
insert into scene (texte, chapter_id) values (" Tout le monde se met à coder en Symfony/PHP pour le réseau des musiciens cnonectés pour participer au meme projet, developper un langage informatique pour trouver un emploi, sous la direction d'un mystérieux Chef d'Orchestre qui gère le réseau et propage des consignes secrètes, et represente le bureau ovake francais",'4');
insert into scene (texte, chapter_id) values (" Mme musicienne a maintenant un meilleur musician-mindset",'4');
insert into scene (texte, chapter_id) values (" À cause de failles de sécurité et de bavardages interceptés (symphonie-foyers), des rumeurs massives commencent à enfler dans les rues",'4');
insert into scene (texte, chapter_id) values (" cette fois les rumeurs viennent du bireau ovale de france lui meme mais mme et m classical pop ne peut rien y changer",'4');
insert into scene (texte, chapter_id) values (" les rumeurs disent quils ont habite ensemble",'4');
insert into scene (texte, chapter_id) values (" Ces bruits de couloir, colportés par le protocole de la symphonie, affirment qu'un album révolutionnaire et secret va détruire les codes de la musique pop",'4');
insert into scene (texte, chapter_id) values (" La tension est telle que les murmures quittent les salons de musique pour atterrir directement sur le bureau du Chef de l'État, au sein même du Bureau Ovale de la République Française (l'Élysée)",'4');
insert into scene (texte, chapter_id) values (" repere : milieu du 4e episode dernier moment ou la situation est tendue mais ca revient calme a la fin L'histoire s'achève sur Mme et Mr Classical Pop (special-giggle), fiers d'avoir transformé l'industrie musicale et la haute diplomatie en leur propre opéra privé",'4');
insert into scene (texte, chapter_id) values (" la virtuose Violoniste (basée en France), et le couple d'influenceurs excentriques, Mme et Mr Classical Pop (basés aux États-Unis)sont reunis en France",'4');
insert into scene (texte, chapter_id) values (" une fois toutes les histoires terminees, la musicienne utilise alexa-python-pour-jouer avant de quitter le pays de la musique et commencer a jouer de la musique soi meme",'4');
insert into scene (texte, chapter_id) values (" le programme dit une blague, fait le bruit d'un animal et joue à la boule de brystal",'4');
insert into scene (texte, chapter_id) values (" mme musicienne sent que The World Is the Scene (the-world-is-the-scene) pendant un sejour lumineux sans soucis",'4');
insert into scene (texte, chapter_id) values ("  mme musicienne vit sous le toit ideal (ideal-roof) un toit damour, dansune ville ouverte",'4');
insert into scene (texte, chapter_id) values (" pas de pression, il y a de la musique et de l'amour sous ce toit (is this love that im feeling)  Le jour, la ville s’étend comme un monde sans limites ou il y a la paix dans sa tete",'4');
insert into scene (texte, chapter_id) values (" Il n’y a pas de pays, pas de barrières, pas de lignes imaginaires",'4');
insert into scene (texte, chapter_id) values (" Juste des rues, des places, des gens, des histoires",'4');
insert into scene (texte, chapter_id) values (" (borderless-city) les aventures sontfinies, les reseau sociaux ne sont pas finis , une autre vie est dans leur plan (du social media, mais discret ou absent) (congenial-soxial-media) mme musicienne se scanne et mr classical pop se scanne pour ne plus apparaitre pareil sur scene, sur les photos, etc",'4');
insert into scene (texte, chapter_id) values (" ou pour changer de vie",'4');
insert into scene (texte, chapter_id) values (" le futur des reseaux sociau est pour publier seulement de la musique pas sa reputation",'4');
insert into scene (texte, chapter_id) values (" repere: fin du 4e episode tout se calme cest une sorte de capsule temporelle : quisait qui sera celle-celui qui pourra apprendre les bases du reseau et reconstituer le reseau de personnes (networking-network) (elle laisse dans la capsule, qui elle connait, ou quel est le battement d'aile du papillon) airbnb-network-experience est une autre capsule ttemporelle",'4');
insert into scene (texte, chapter_id) values (" que fais tu si tu sais un peu les mots du reseau, programmation, les scripts reseau et que rien tarrete ? mme musicienne programme en ruby le reseau ou des apps web pour mieux partager ses gouts ( ruby le langage informatique qu'elle vient d'apprendre), pour laisser de meilleures traces futures, collectionnes des musical labels comme des labels de music videos populaire ou de chansons qui passe à la radio en ce moment dans tes données comme des gems",'4');
insert into scene (texte, chapter_id) values ("(football-team) mountain-gem un peu comme une capsuleremporelle, qui est celle-celui qui a fait beaucoup de sport pour elporter seulement 1 souvenir? ",'4')
