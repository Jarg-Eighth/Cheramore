#guard main

/* Game Core inclusion */
#include "C:\\Games\\1.26\\cJass\\cjass.j"
#include "C:\\Games\\1.26\\cJass\\general.j"
#include "C:\\Games\\1.26\\cJass\\timeout.j"
#include "C:\\Games\\1.26\\cJass\\attributes.j"
#include "C:\\Games\\1.26\\cJass\\enity.j"
#include "C:\\Games\\1.26\\cJass\\gamedata.j"
#include "C:\\Games\\1.26\\cJass\\MessageEngine.j"

/* User Core inclusion */


/* Settings Block */
void InitAttributes(){
	attrarmor = attribute.create(-256,511);
	attrarmor.add('AId1'); attrarmor.add('AId2'); attrarmor.add('AId3');
	attrarmor.add('AId4'); attrarmor.add('AId5'); attrarmor.add('AId7');
	attrarmor.add('AId8'); attrarmor.add('AId0'); attrarmor.add('A00O');
}