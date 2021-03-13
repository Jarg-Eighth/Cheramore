#guard main

/* Game Core inclusion */

#include "C:\\Games\\1.26\\cJass\\inquisition.j"
#include "C:\\Games\\1.26\\cJass\\cjass.j"
#include "C:\\Games\\1.26\\cJass\\general.j"
#include "C:\\Games\\1.26\\cJass\\wectors.j"
#include "C:\\Games\\1.26\\cJass\\timeout.j"
#include "C:\\Games\\1.26\\cJass\\attributes.j"
#include "C:\\Games\\1.26\\cJass\\basedata.j"
#include "C:\\Games\\1.26\\cJass\\enity.j"
#include "C:\\Games\\1.26\\cJass\\gamedata.j"
#include "C:\\Games\\1.26\\cJass\\MessageEngine.j"
#include "C:\\Games\\1.26\\cJass\\pawls.j"
#include "C:\\Games\\1.26\\cJass\\media.j"
#include "C:\\Games\\1.26\\cJass\\executer.j"

/* User Core inclusion */
#include "C:\\Games\\1.26\\BattleInForest\\Map.j"
#include "C:\\Games\\1.26\\BattleInForest\\herotavern.j"

/* Settings Block */

void InitAttributes(){
    attrarmor = attribute.create(-256,511);
    attrarmor.add('AId1'); attrarmor.add('AId2'); attrarmor.add('AId3');
    attrarmor.add('AId4'); attrarmor.add('AId5'); attrarmor.add('AId7');
    attrarmor.add('AId8'); attrarmor.add('AId0'); attrarmor.add('A00O');

    attrattack = attribute.create(-511,4095);
    attrarmor.add('AItg'); attrarmor.add('AIth'); attrarmor.add('AIat');
    attrarmor.add('AIti'); attrarmor.add('AItj'); attrarmor.add('AIt6');
    attrarmor.add('AItk'); attrarmor.add('AItl'); attrarmor.add('AIt9');
    attrarmor.add('AItn'); attrarmor.add('AItc'); attrarmor.add('AItf');


    attrstrength = attribute.create( 0, 511 );
    attmstrength = attribute.create( 0, 63 );
    attrstrength.add('AIs1'); attrstrength.add('AIs3'); attrstrength.add('AIs4');
    attrstrength.add('AIs6'); attrstrength.add('AIx3'); attrstrength.add('AIx5');
    attrstrength.add('A011'); attrstrength.add('A00X'); attrstrength.add('A012');
    attmstrength.add('A00Y'); attmstrength.add('A00Z'); attmstrength.add('A010');
    attmstrength.add('A004'); attmstrength.add('A00D'); attmstrength.add('A00J');

    attragility = attribute.create( 0, 511 );
    attmagility = attribute.create( 0, 63 );
    attragility.add('AIa1'); attragility.add('AIa3'); attragility.add('AIa4');
    attragility.add('AIa6'); attragility.add('AIaz'); attragility.add('AIx2');
    attragility.add('A00U'); attragility.add('A00G'); attragility.add('A00T');
    attmagility.add('A00K'); attmagility.add('A00L'); attmagility.add('A00P');
    attmagility.add('A013'); attmagility.add('A014'); attmagility.add('A015');

    attrintellect  = attribute.create( 0, 511 );
    attmintellect  = attribute.create( 0, 63 );
    attrintellect.add('AIi1'); attrintellect.add('AIi3'); attrintellect.add('AIi4');
    attrintellect.add('AIi6'); attrintellect.add('AIx1'); attrintellect.add('AIx4');
    attrintellect.add('A00H'); attrintellect.add('A00V'); attrintellect.add('A00S');
    attmintellect.add('A016'); attmintellect.add('A017'); attmintellect.add('A018');
    attmintellect.add('A019'); attmintellect.add('A01A'); attmintellect.add('A01B');

    attrhealth = attribute.create(0,8191);
    attrhealth.add('AIlf'); attrhealth.add('AIlz'); attrhealth.add('AIl1');
    attrhealth.add('AIl2'); attrhealth.add('A01H'); attrhealth.add('A01I');
    attrhealth.add('A01J'); attrhealth.add('A01K'); attrhealth.add('A01P'); 
    attrhealth.add('A01L'); attrhealth.add('A01M'); attrhealth.add('A01N'); 
    attrhealth.add('A01O');

    attrmana  = attribute.create(0,4095);
    attrmana.add('AImb'); attrmana.add('AIbm'); attrmana.add('A01Q'); 
    attrmana.add('A01R'); attrmana.add('A01S'); attrmana.add('A01T');
    attrmana.add('A01U'); attrmana.add('A01V'); attrmana.add('A01W');
    attrmana.add('A01X'); attrmana.add('A01Y'); attrmana.add('A01X');

    attrratio = attribute.create(-511,1023);
    attrratio.add('AIsx'); attrratio.add('AIs2'); attrratio.add('A020');
    attrratio.add('A021'); attrratio.add('A022'); attrratio.add('A023');
    attrratio.add('A024'); attrratio.add('A025'); attrratio.add('A026');
    attrratio.add('A027');
};


void FillBaseData(){
    baseunit bu = baseunit.create('Uear')
    bu.hp_regen = 0.55; bu.mp_regen = 0.25; bu.hp = 100;
    bu.intellect = 15; bu.agility = 14; bu.strength = 19; bu.attack = 18;
    bu.dice = 2; bu.side = 4; bu.power_crit = 1.00; bu.spell_crit = 1.00;
    bu.armor = 4;

    bu = baseunit.create('nwlt')
    bu.hp_regen = 0.75; bu.attack = 11; bu.dice = 2; bu.side = 4;
    bu.block_value = 25.00; bu.block_chance = 7.25; bu.hp = 450;

    bu = baseunit.create('nwlg')
    bu.hp_regen = 0.75; bu.attack = 27; bu.dice = 1; bu.side = 4;
    bu.block_value = 25.00; bu.block_chance = 7.25; bu.hp = 450;
}

void FillBaseDataA(){
    baseitem bi = baseitem.create('ward');
    bi.attack = 15; bi.armor = 5; bi.hp = 100;

    bi = baseitem.create('rat3');
    bi.attack = 5;
}

void PreInits(){
    countdown zclock    = countdown.create(true);
    zclock.overExecute(1.00,"InitAttributes");
    zclock = countdown.create(true);
    zclock.overExecute(1.50,"FillBaseData");
    zclock = countdown.create(true);
    zclock.overExecute(2.00,"FillBaseDataA");
    zclock = 0;
}