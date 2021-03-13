#guard basedata

#define basedata_included = true;
setdef uses_BaseData = ,BaseData

#define dex2arm_factor = 0.13;
#define dexdefarm = -2.00;
#define str_hps = 0.02;
#define int_mps = 0.01;

namespace BaseData __onload Init using General
    private hashtable datex = nil

    class baseunit {
        int     intellect   = 0;
        int     agility     = 0;
        int     strength    = 0;
        int     hp          = 0;
        int     mp          = 0;
        int     attack      = 0;
        int     side        = 0;
        int     dice        = 0;
        int     armor       = 0;
        int     mainchar    = main_str;

#if sysdamage_included
        dmgsystem attacktype    = 0;
        int       armortype     = 0;
#endif
        float   hp_regen        = 0.0;
        float   mp_regen        = 0.0;
        float   resistance      = 0.0;
        float   mbr_resist      = 0.0; /* manaburn resistance */    
        float   spell_crit      = 0.0;
        float   spell_chance    = 0.0;
        float   power_crit      = 0.0;
        float   power_chance    = 0.0;
        float   block_value     = 0.0;
        float   block_chance    = 0.0;
        float   dodge_chance    = 0.0; /* evasions */

        destructor(){
            free self;
        };

        __self data(int unitId){
            return LoadInteger( datex, 0, unitId);
        };

        constructor(int unitId){
            new self;
                SaveInteger( datex, 0, unitId, this )
            return this 
        };
    }

    class baseitem  {
        int     intellect   = 0;
        int     agility     = 0;
        int     strength    = 0;
        int     hp          = 0;
        int     mp          = 0;
        int     attack      = 0;
        int     attackspeed = 0; /* in percentage*/
        int     armor       = 0;

        float   hp_regen        = 0.0;
        float   mp_regen        = 0.0;
        float   resistance      = 0.0;
        float   mbr_resist      = 0.0; /* manaburn resistance */    
        float   spell_crit      = 0.0;
        float   spell_chance    = 0.0;
        float   power_crit      = 0.0;
        float   power_chance    = 0.0;
        float   block_value     = 0.0;
        float   block_chance    = 0.0;
        float   dodge_chance    = 0.0; /* evasions */

        destructor(){
            free self;
        };

        __self data(int itemId){
            return LoadInteger( datex, 0, itemId);
        };

        constructor(int itemId){
            new self;
                SaveInteger( datex, 0, itemId, this )
            return this 
        };
    };

    int dex2armor(unit hero, bool withBonuses){
        return R2I( (dexdefarm) + (dex2arm_factor * GetHeroAgi( hero, withBonuses)) );
    };

    float fdex2armor(unit hero, bool withBonuses){
        return (dexdefarm) + (dex2arm_factor * GetHeroAgi( hero, withBonuses));
    };

    int mainchar2attack( unit hero, int mattr, bool withBonuses){
        if mattr == main_str {
            return GetHeroStr( hero, withBonuses );
        };
        if mattr == main_agi {
            return GetHeroAgi( hero, withBonuses );
        };
        if mattr == main_int {
            return GetHeroInt( hero, withBonuses );
        };
        return 0;
    };

    private void Init(){
        datex = InitHashtable();
    }

endnamespace