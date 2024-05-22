
# Introducció a les còpies de seguretat amb PostgreSQL

## Què és una còpia de seguretat?

Una còpia de seguretat, o backup en anglès, és una pràctica comuna en l' àmbit informàtic que consisteix a crear una còpia de les dades emmagatzemades en un sistema per tal de protegir-les davant de possibles pèrdues o danys. En el context de PostgreSQL, una còpia de seguretat es refereix a la creació i emmagatzematge d' una rèplica de la base de dades, la qual pot ser utilitzada per restaurar les dades en cas que s' esdevingui una fallada en el sistema.

## Importància de les còpies de seguretat

Les còpies de seguretat són essencials per garantir la integritat i disponibilitat de les dades emmagatzemades en PostgreSQL. En crear còpies periòdiques de la base de dades, es minimitza el risc de perdre informació valuosa en cas de fallades del sistema, errors humans, atacs cibernètics o altres esdeveniments imprevistos. A més, les còpies de seguretat permeten recuperar la base de dades a un estat funcional anterior, cosa que pot resultar crucial per mantenir la continuïtat del negoci.

## Mètodes de còpia de seguretat en PostgreSQL

PostgreSQL ofereix diversos mètodes per realitzar còpies de seguretat de les bases de dades. A continuació, es presenten els mètodes més comuns:

1. Còpies de seguretat físiques: Les còpies de seguretat físiques consisteixen a crear una còpia exacta dels arxius de dades i registres de transaccions de PostgreSQL. Aquestes còpies solen ser ràpides de crear i restaurar, i són especialment útils per a grans volums de dades. Tanmateix, poden ocupar una quantitat significativa d' espai en disc.
2. Còpies de seguretat lògiques: Les còpies de seguretat lògiques es basen a extreure les dades emmagatzemades en PostgreSQL en un format llegible, com SQL. Aquestes còpies generen arxius de text pla que poden ser fàcilment inspeccionats i manipulats. Tanmateix, les còpies de seguretat lògiques poden ser més lentes de crear i restaurar que les còpies físiques, especialment en bases de dades grans.
3. Còpies de seguretat contínues (WAL Archiving): Les còpies de seguretat contínues, també conegudes com a WAL Archiving, permeten realitzar còpies incrementals dels registres de transaccions a la base de dades. Aquest mètode s' utilitza en combinació amb les còpies de seguretat físiques per garantir una alta disponibilitat i recuperació davant fallades. En utilitzar el registre de transaccions, es poden restaurar les dades fins a l' últim punt en què es va realitzar una còpia, la qual cosa minimitza la pèrdua d' informació en cas d' un esdeveniment advers.

## Recomanacions per realitzar còpies de seguretat efectives

A continuació es presenten algunes recomanacions per assegurar l' efectivitat de les còpies de seguretat en PostgreSQL:

1. Realitzar còpies de seguretat de forma regular, segons les necessitats del negoci i el volum de dades.
2. Emmagatzemar les còpies de seguretat en un medi secundari confiable, protegit i de fàcil accés.
3. Provar i verificar periòdicament la integritat de les còpies de seguretat per assegurar la seva correcta creació i restauració.
4. Documentar detalladament el procés de creació i restauració de còpies de seguretat, incloent-hi els passos a seguir i les eines utilitzades.
5. Establir un pla de contingència en cas de fallades greus, que inclogui l' estratègia de recuperació i el temps de restauració esperat.
En resum, les còpies de seguretat en PostgreSQL són vitals per garantir la seguretat i disponibilitat de les dades emmagatzemades a la base de dades. En utilitzar els mètodes apropiats i seguir unes bones pràctiques, és possible protegir i restaurar les dades de manera efectiva en cas de fallades o esdeveniments adversos.

# Eines i mètodes per realitzar còpies de seguretat en PostgreSQL

## Introducció

En l' àmbit de l' administració de bases de dades PostgreSQL, les còpies de seguretat són una part fonamental del manteniment i la protecció de les dades. Les còpies de seguretat permeten recuperar la informació en cas de fallades, errors humans o desastres, i són essencials per garantir la integritat i disponibilitat de les dades.
No obstant això, realitzar còpies de seguretat no és un procés trivial. Requereix planificació, selecció de les eines adequades i la implementació dels mètodes correctes per assegurar que les còpies de seguretat es realitzin de manera eficient i confiable.
En aquest tema, explorarem algunes de les eines i mètodes més comuns utilitzats per realitzar còpies de seguretat en PostgreSQL, oferint detalls sobre les seves característiques i recomanacions per al seu ús.

## Eines per realitzar còpies de seguretat

PostgreSQL ofereix diverses eines directament relacionades amb la generació de còpies de seguretat. Dins de les més utilitzades es troben:

1. pg_dump: pg_dump és una eina de línia de comandaments inclosa en PostgreSQL que permet realitzar còpies de seguretat lògiques de bases de dades completes o d' elements específics, com taules o esquemes. Proporciona la flexibilitat per triar quines dades donarà suport i com fer-ho.
Per utilitzar pg_dump, cal tenir accés a la línia de comandaments del sistema operatiu i conèixer els diferents paràmetres i opcions que ofereix l' eina.
Alguns dels paràmetres més utilitzats inclouen:
   1. -F: especifica el format de sortida de la còpia de seguretat (tar, plain, custom).
   2. -f: indica l' arxiu en el qual es guardarà la còpia de seguretat.
   3. -T: exclou taules específiques de la còpia de seguretat.
   4. -n: recolza només l' esquema especificat.
2. pg_dumpall: pg_dumpall, com el seu nom ho indica, permet realitzar còpies de seguretat de tots els objectes d' una base de dades, incloent-hi els rols, taules, vistes, funcions i triggers. És útil quan es vol realitzar una còpia de seguretat completa del sistema de bases de dades, o quan es necessita migrar a un nou servidor. Igual que pg_dump, pg_dumpall s'utilitza des de la línia de comandaments i ofereix diferents opcions per personalitzar la còpia de seguretat. Algunes de les opcions més utilitzades són:
   1. -g: inclou els rols globals en la còpia de seguretat.
   2. -r: inclou les ACLs (Access Control Lists) en la còpia de seguretat.
   3. -f: especifica l' arxiu en el qual es guardarà la còpia de seguretat.
3. pg_basebackup: pg_basebackup és una eina de PostgreSQL utilitzada per realitzar còpies de seguretat físiques. Aquesta eina permet crear una còpia binària del clúster de PostgreSQL complet, incloent-hi totes les dades, l'arxiu de registre de transaccions (WAL) i l'arxiu de configuració.
L' ús de pg_basebackup és especialment útil quan es vol realitzar còpies de seguretat completes o quan es necessita enviar una còpia del clúster a un altre servidor per a replicació.

## Mètodes per realitzar còpies de seguretat

A més de les eines proporcionades per PostgreSQL, també és possible utilitzar altres mètodes per realitzar còpies de seguretat a PostgreSQL. Alguns dels mètodes més comuns inclouen:

1. Còpies de seguretat programades: Una forma de garantir còpies de seguretat regulars és programant tasques perquè s' executin automàticament. Això es pot aconseguir utilitzant utilitats del sistema operatiu, com cron a Linux o el Programador de Tasques a Windows. Configurar una tasca programada per executar una eina de còpia de seguretat, com pg_dump, en intervals regulars garantirà que sempre hi hagi una còpia actualitzada de la base de dades disponible.
2. Rèpliques físiques:  Una altra forma de realitzar còpies de seguretat en PostgreSQL és mitjançant l'ús de rèpliques físiques. Les rèpliques físiques permeten tenir còpies gairebé en temps real de la base de dades en un altre servidor, cosa que brinda una gran redundància i protecció contra desastres.
Per configurar una rèplica física, s' utilitza l' eina pg_basebackup per crear una còpia inicial del clúster de PostgreSQL en el servidor de rèplica. Després, es configura la replicació contínua utilitzant la funció pg_receivewal i altres mecanismes proporcionats per PostgreSQL.
3. Emmagatzematge al núvol: Una altra opció cada vegada més popular és utilitzar serveis d'emmagatzematge al núvol per realitzar còpies de seguretat de PostgreSQL. Aquests serveis ofereixen característiques com emmagatzematge escalable, redundància i facilitat d' accés a les còpies de seguretat.
Per utilitzar emmagatzematge al núvol, cal seleccionar un proveïdor confiable i configurar els mecanismes adequats per transferir i emmagatzemar els arxius de còpia de seguretat de PostgreSQL al núvol.
En resum, PostgreSQL ofereix diverses eines i mètodes per realitzar còpies de seguretat, cadascun amb les seves pròpies característiques i avantatges. L' elecció de l' eina i el mètode adequats dependrà de les necessitats específiques de cada entorn i els requisits de protecció de dades. És fonamental establir una estratègia de còpies de seguretat sòlida i provar regularment els procediments de recuperació per garantir la integritat i disponibilitat de les dades.

# Recuperació de dades i restauració de còpies de seguretat en PostgreSQL

## Introducció

La recuperació de dades i la restauració de còpies de seguretat són aspectes fonamentals en la gestió de bases de dades PostgreSQL. En aquest tema, explorarem els procediments i eines necessàries per recuperar dades en cas de pèrdua o corrupció, així com per restaurar còpies de seguretat prèviament realitzades.

## Tipus de pèrdua de dades

Abans d' aprofundir en els procediments de recuperació, és important comprendre els diferents tipus de pèrdua de dades que poden ocórrer en PostgreSQL:

1. Pèrdua accidental de dades: pot ocórrer quan un usuari elimina involuntàriament informació important o realitza canvis erronis a la base de dades.
2. Pèrdua de dades causada per falles de maquinari o programari: inclou esdeveniments com talls d' energia, pèrdua de connectivitat o corrupció d' arxius.
3. Pèrdua de dades a causa de desastres naturals: incendis, inundacions o terratrèmols poden danyar els servidors i, com a resultat, causar la pèrdua total o parcial de les dades emmagatzemades.

## Eines de recuperació i restauració

PostgreSQL ofereix una sèrie d'eines i funcionalitats que faciliten la recuperació de dades i la restauració de còpies de seguretat. Algunes de les més importants són:
WALT (Write-Ahead Logging): El Write-Ahead Logging és una característica clau de PostgreSQL que garanteix la integritat de les dades i permet la recuperació en cas de falles. Amb l' ús de WALT, totes les modificacions a la base de dades es registren en un arxiu de registre abans de ser aplicades. Això permet reconstruir l'estat d'una base de dades en el moment de qualsevol fallada o pèrdua de dades.
Punts de verificació (Checkpoints): Els punts de verificació són esdeveniments automàtics que ocorren en PostgreSQL per facilitar la recuperació. Durant un punt de verificació, PostgreSQL verifica la consistència de les dades, escriu els canvis pendents en els arxius de dades i els arxius de registre es recalculen i poden ser alliberats. Aquests punts són fonamentals per aconseguir una recuperació exitosa i minimitzar la pèrdua de dades.
Comandaments de recuperació: PostgreSQL ofereix diversos comandaments que permeten recuperar dades en cas de pèrdues. Alguns dels comandaments més utilitzats són:

1. pg_dump: aquest comandament permet realitzar còpies de seguretat de bases de dades completes o d' objectes específics. Permet emmagatzemar les dades en diferents formats, com SQL o arxius de text pla.
2. pg_restore: s' utilitza per restaurar còpies de seguretat realitzades amb pg_dump. Pot restaurar bases de dades completes o només objectes específics.
3. pg_basebackup: permet realitzar còpies de seguretat sense bloqueig i en calent d' un clúster PostgreSQL.
4. pg_rewind: en el cas d'un desastre, aquest comandament permet reconfigurar una rèplica per convertir-la en la base de dades principal, evitant així la necessitat de realitzar una restauració completa.

## Escenaris comuns de recuperació i restauració

A continuació, es presenten alguns escenaris comuns en els quals es requereix la recuperació i restauració de dades en PostgreSQL:

### Eliminació accidental de dades

Si un usuari elimina accidentalment dades importants d'una taula, és possible recuperar-les utilitzant tècniques com l'ús de punts de recuperació (recovery points) o la restauració d'una còpia de seguretat prèvia que contingui les dades eliminades.

### Pèrdua de dades a causa d' una falla de maquinari o programari

En cas d' una falla de maquinari o programari que causi la pèrdua de dades, cal restaurar una còpia de seguretat prèvia per recuperar les dades. És important comptar amb una estratègia de còpies de seguretat adequada i realitzar còpies de seguretat periòdiques per minimitzar la pèrdua de dades.

### Restauració després d' un desastre

En situacions extremes, com un incendi o un terratrèmol, pot ocórrer la pèrdua total dels servidors i les dades emmagatzemades en ells. En aquests casos, cal comptar amb un pla de recuperació davant desastres que inclogui la restauració de còpies de seguretat en servidors de recolzament o en el núvol.

## Conclusions

La recuperació de dades i la restauració de còpies de seguretat són aspectes fonamentals en la gestió de bases de dades PostgreSQL. Amb l' ús adequat d' eines com WALT, punts de verificació i comandaments de recuperació, és possible minimitzar la pèrdua de dades i restaurar la base de dades en cas de falles o desastres. És fonamental comptar amb una estratègia de còpies de seguretat sòlida i realitzar proves periòdiques de recuperació per garantir la disponibilitat i la integritat de les dades.
