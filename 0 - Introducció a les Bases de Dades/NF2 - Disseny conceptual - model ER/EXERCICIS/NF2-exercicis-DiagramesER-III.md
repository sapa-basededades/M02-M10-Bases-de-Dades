## VIVER 

Ens han demanat realitzar el disseny d’una base de dades per un Garden i viver de plantes a on es pot comprar qualsevol cosa relacionada amb la jardineria (arbres, arbustos, plantes, flors, llavors per l’hort, eines, jardí, barbacoes, sistemes de reg, etc.).

En el garden es venen tot tipus de plantes. El primer que cal saber és que en disposen de plantes naturals i d’artificials. Les dues les podem classificar en arbres, arbustos, arbres fruiters i plantes i dins d’aquestes categories en subcategories.
Per exemple tenim que un llimoner pertany a la categoria d’arbres fruiters i dins d’aquesta es troba classificat dins de cítrics.

Exemple:

>Llimoner-> cítric (subcategoria) -> arbre fruiter (categoria)

Totes les plantes les identifiquem per un SKU que és un número de 4 dígits. Com que a la botiga s’hi venen més coses que no només plantes afegim els 3 caràcters “PLT” per identificar les plantes dels altres productes com poden ser eines, barbacoes, mobiliari, etc...
A part de l’identificador volem guardar-ne: una foto, el nom comú, el nom científic, el preu i una petita descripció. 

De totes les plantes en volen controlar un inventari d’estoc per saber la quantitat que tenen de cadascuna d’elles. No cal identificar cadascun dels exemplars de cada tipus de planta, només cal saber la quantitat que hi ha de cada planta.
	
Depenent de l’aigua i les necessitats ambientals de les plantes les agrupem per zones. D’aquesta manera es pot dur un control del reg i de paràmetres com la temperatura, humitat, quantitat d'aigua per dia, etc...
Cadascuna de les zones del garden les identifiquem amb una Z+número i ens cal saber les plantes que hi han a cada zona. Un tipus de planta no estarà mai a dues zones diferents.
Per exemple tenim que els llimoners, mandariners, tarongers estan a la zona Z1, però en canvi l’alfàbrega, el coriandre i el cibulet, estan a la zona Z23.
Cada zona té unes característiques ambientals concretes i els empleats han de mantenir els valors d’aquestes característiques en llindars òptims. Aquestes característiques són: temperatura, humitat, litres d’aigua/diaris i tipus de reg (gota-gota, inundació i aspersió).

Cada zona està assignada a un empleat durant un període de temps determinat i aquests realitzen 3 torns (matí, tarda i nit). Per exemple, en Pere Pi durant el mes de gener fa torn de matí i se’n ocupa de les zones Z1,Z2 i Z3. En canvi al mes de febrer pot fer torn de tarda i ocupar-se de les mateixes zones o d’altres diferents. El torn que fa l’empleat no va lligat a la zona que ocupa sinó a la seva situació contractual.
Cal saber en un mes concret quines zones té assignades cada empleat. Un zona en un mes concret només està assignada a un sol empleat. Els hi cal tenir un històric de l'assignació de zones per empleats perquè si hi ha algun incident en alguna de les zones podem anar a buscar l'empleat responsable.

Els empleats els identificarem mitjançant el seu nif i també ens guardarem el seu nom i cognoms. Com s’ha dit anteriorment, el torn que fa cada empleat es decideix quan aquest entra a treballar a l’empresa, però pot variar al llarg de la vida laboral i no volem guardar-ne un històric de per quins torns ha passat cada empleat. 

A part de les plantes la botiga ofereix un espai de barbacoes. D’aquestes, n’hi ha de diferents marques i models, però el més important és que es distingeixen per si són de carbó,  gas, elèctriques o de pellets.
Cada model de barbacoa s’identifica mitjançant un SKU a on també tenim 4 dígits precedits dels 3 caràcters “BAR”.
A diferència de les plantes, els exemplars de les barbacoes si que els hem de tenir inventariats i saber exactament quins són perquè hem de guardar-ne la data de la compra en el proveïdor. Per tant, no només ens cal saber el número total de barbacoes de cada model.
A part de tot el que s’ha dit de cada model de barbacoa hem de guardar-ne una foto, el nom, el preu, una descripció i nº de referència de la fàbrica. Aquest número ens el proporciona el fabricant i serveix per si mai hem de tramitar la garantia perquè amb aquest número la fàbrica sap el model concret de barbacoa i la composició de les peces que la formen.

El nostre sistema cal que permeti. Entre altres coses:

* Guardar-nos el numero de plantes de cada categoria i subcategoria
* El número de barbacoes de cada model o el número de barbacoes de cada marca.
* Hem de poder calcular el número de plantes artificials que tenim.
