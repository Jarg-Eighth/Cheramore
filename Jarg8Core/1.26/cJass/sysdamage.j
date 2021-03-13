#guard sysdamage

#define <_damage>(os,ot,val)
#define <_coda>(os,ot,val,dt)


#define sysdamage_included = true
setdef  uses_DamageSystem = ,DamageSystem

namespace DamageSystem __onload Init using General uses_Enities uses_Tagger uses_BaseData
    
    #define ds_factor = 0.05
    #define ds_zetta  = 0.025

    const float null_damage = 0.0;

    private trigger         Fixer   = nil;
    private triggeraction   Fixator = nil;
    private unit            Fool    = nil;

            float           ds_incoming_damage = 0.0
            float           ds_outgoing_damage = 0.0
            bool            ds_event           = false
    
    #define dmg_incoming = ds_incoming_damage;
    #define dmg_outgoing = ds_outgoing_damage;

    enum (dsarmortype) {
        no_arm,
        lite_arm,
        norm_arm,
        medium_arm,
        hard_arm,
        hero_arm,
        divine_arm,
        forced_arm,
    };

    dmgsystem ds_norm   = no_data;
    dmgsystem ds_magic  = no_data;
    dmgsystem ds_siege  = no_data;
    dmgsystem ds_spell  = no_data;
    dmgsystem ds_range  = no_data;
    dmgsystem ds_hero   = no_data;
    dmgsystem ds_pure   = no_data;


    dmgsystem {
        float armorr[8]
        float rescale[8]

        constructor(){
            return itself.allocate();
        }
    }

#if enity_included 

    void ds_dodge( object ot){
        bool isDodged = _RR(0.0,100.0) <= ot.dodge_chance
        /* code for texttag */
#if ttager_included 
        if isDodged  {
            ttag tt = ttag.create()
            tt.degree       = 75.0;
            tt.velocity     = 110.0;
            tt.lifespan     = 1.75;
            tt.text         = "|cfffc0101Юрк!|r";
            tt.size         = 10.0;
            tt.x            = ot.x;
            tt.y            = ot.y;
            tt.spawn();
        };
#endif
        /* end code for texttag */
        return B2R( !isDodged );
    }


    float CalculateArmor( object ot, object os, float dmg){
        float z = ot.getArmor();
        float zz = (dmg / os.basedata.attacktype.rescale[ot.basedata.armortype]) * ds_zetta;
        return  flimm(os.basedata.attacktype.armorr[ot.basedata.armortype] - (z * ds_factor ) / (1 + z * ds_factor) + zz;, 0.01 );
    }

    float CalculateArmorEx( object ot, dmgsystem dmgtype, float dmg){
        float z = fdex2armor( ot.subject, true );
        float zz = (dmg / dmgtype.rescale[ot.basedata.armortype]) * ds_zetta;
        return  flimm( dmgtype.armorr[ot.basedata.armortype] - (z * ds_factor ) / (1 + z * ds_factor) + zz;, 0.01 );
    }


    void ds_block( object ot, float dmg){
        float xdmg = flim( B2R( _RR(0.0,100.0) <= ot.block_chance ) * ot.block_value, dmg );
        
        return dmg - xdmg;

    } 

    void ds_damage(object os, object ot, float val){
        
        ds_incoming_damage = val;
        ds_outgoing_damage = CalculateArmor(ot,os) * val;
        ds_event = true;
            UnitDamageTarget( os.subject, ot.subject, ds_outgoing_damage, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS );
        ds_event = false;

    };

    enum (dsdmgtypes) {  dt_pure, dt_magic, dt_physic, dt_explode, dt_pure_passive, dt_magic_passive, dt_physic_passive, dt_return };



    void ds_spelldamage( object os, object ot, float dmg, int dmgtype){
        float xdmg = 0.0;
        
        if dmgtype < dt_pure_passive {
            
            xdmg = dmg * ds_dodge();
            
            if  xdmg < 1.00 {
                return;
            };

            xdmg = ds_block(xdmg);
            
        };

        if dmgtype == dt_return {   
            os.isReturnDamage = true;
            ds_event = true;
                UnitDamageTarget( os.subject, ot.subject, dmg, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS );
            os.isReturnDamage = false;
            ds_event = false;
            return;
        }

        if dmgtype == dt_magic {
            os.isAbilityDamage = true
            ds_event = true;
                UnitDamageTarget( os.subject, ot.subject, flimm(xdmg - xdmg * ot.resistance,0.0), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS ); 
            os.isAbilityDamage = false
            ds_event = false;
            return;
        }

        if dmgtype == dt_pure_passive {
            xdmg = CalculateArmorEx( ot, ds_pure, dmg );
            UnitDamageTarget( os.subject, ot.subject, flimm(xdmg,0.0), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS );
        }

        if dmgtype == dt_magic_passive {
            xdmg = CalculateArmorEx( ot, ds_pure, dmg );
            UnitDamageTarget( os.subject, ot.subject, flimm(xdmg,0.0), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS );
        }
    };


        setdef <_damage>(os,ot,val) = ds_damage(os,ot,val);
        setdef <_coda>(os,ot,val,dt)   = ds_spelldamage(os,ot,val,dt);

    #endif

    public void Init(){
        ds_norm = dmgsystem.create();
        ds_norm.armorr[no_arm]      = 1.00; ds_norm.rescale[no_arm]     = 100.00;
        ds_norm.armorr[lite_arm]    = 1.00; ds_norm.rescale[lite_arm]   = 100.0;
        ds_norm.armorr[norm_arm]    = 1.00; ds_norm.rescale[norm_arm]   = 100.0;
        ds_norm.armorr[medium_arm]  = 1.50; ds_norm.rescale[medium_arm] = 150.0;
        ds_norm.armorr[hard_arm]    = 1.00; ds_norm.rescale[hard_arm]   = 100.0;
        ds_norm.armorr[hero_arm]    = 1.00; ds_norm.rescale[hero_arm]   = 150.0;
        ds_norm.armorr[divine_arm]  = 0.05; ds_norm.rescale[divine_arm] = 500.0;
        ds_norm.armorr[forced_arm]  = 0.70; ds_norm.rescale[forced_arm] = 170.0;

        ds_magic = dmgsystem.create();
        ds_magic.armorr[no_arm]     = 1.00; ds_magic.rescale[no_arm]     = 100.0;
        ds_magic.armorr[lite_arm]   = 1.25; ds_magic.rescale[lite_arm]   = 125.0;
        ds_magic.armorr[norm_arm]   = 1.00; ds_magic.rescale[norm_arm]   = 100.0;
        ds_magic.armorr[medium_arm] = 0.75; ds_magic.rescale[medium_arm] = 175.0;
        ds_magic.armorr[hard_arm]   = 2.00; ds_magic.rescale[hard_arm]   = 200.0;
        ds_magic.armorr[hero_arm]   = 0.88; ds_magic.rescale[hero_arm]   = 180.0;
        ds_magic.armorr[divine_arm] = 0.05; ds_magic.rescale[divine_arm] = 1000.0;
        ds_magic.armorr[forced_arm] = 0.35; ds_magic.rescale[forced_arm] = 175.0;

        ds_siege = dmgsystem.create();
        ds_siege.armorr[no_arm]     = 1.50; ds_siege.rescale[no_arm]     = 150.0;
        ds_siege.armorr[lite_arm]   = 1.05; ds_siege.rescale[lite_arm]   = 105.0;
        ds_siege.armorr[norm_arm]   = 1.00; ds_siege.rescale[norm_arm]   = 100.0;
        ds_siege.armorr[medium_arm] = 0.50; ds_siege.rescale[medium_arm] = 150.0;
        ds_siege.armorr[hard_arm]   = 1.00; ds_siege.rescale[hard_arm]   = 100.0;
        ds_siege.armorr[hero_arm]   = 0.50; ds_siege.rescale[hero_arm]   = 250.0;
        ds_siege.armorr[divine_arm] = 0.05; ds_siege.rescale[divine_arm] = 1000.0;
        ds_siege.armorr[forced_arm] = 1.50; ds_siege.rescale[forced_arm] = 175.0;

        ds_hero = dmgsystem.create();
        ds_hero.armorr[no_arm]      = 1.00; ds_siege.rescale[no_arm]     = 100.0;
        ds_hero.armorr[lite_arm]    = 1.00; ds_hero.rescale[lite_arm]    = 100.0;
        ds_hero.armorr[norm_arm]    = 1.00; ds_hero.rescale[norm_arm]    = 100.0;
        ds_hero.armorr[medium_arm]  = 0.50; ds_hero.rescale[medium_arm]  = 150.0;
        ds_hero.armorr[hard_arm]    = 1.00; ds_hero.rescale[hard_arm]    = 140.0;
        ds_hero.armorr[hero_arm]    = 1.00; ds_hero.rescale[hero_arm]    = 150.0;
        ds_hero.armorr[divine_arm]  = 0.05; ds_hero.rescale[divine_arm]  = 1000.0;
        ds_hero.armorr[forced_arm]  = 0.50; ds_hero.rescale[forced_arm]  = 175.0;

        ds_range = dmgsystem.create();
        ds_range.armorr[no_arm]     = 1.00; ds_range.rescale[no_arm]     = 100.0;
        ds_range.armorr[lite_arm]   = 1.00; ds_range.rescale[lite_arm]   = 100.0;
        ds_range.armorr[norm_arm]   = 1.00; ds_range.rescale[norm_arm]   = 100.0;
        ds_range.armorr[medium_arm] = 0.50; ds_range.rescale[medium_arm] = 150.0;
        ds_range.armorr[hard_arm]   = 1.00; ds_range.rescale[hard_arm]   = 100.0;
        ds_range.armorr[hero_arm]   = 1.00; ds_range.rescale[hero_arm]   = 100.0;
        ds_range.armorr[divine_arm] = 0.05; ds_range.rescale[divine_arm] = 650.0;
        ds_range.armorr[forced_arm] = 0.50; ds_range.rescale[forced_arm] = 250.0;

        ds_spell = dmgsystem.create();
        ds_spell.armorr[no_arm]     = 1.00; ds_spell.rescale[no_arm]     = 100.0;
        ds_spell.armorr[lite_arm]   = 1.00; ds_spell.rescale[lite_arm]   = 100.0;
        ds_spell.armorr[norm_arm]   = 1.00; ds_spell.rescale[norm_arm]   = 100.0;
        ds_spell.armorr[medium_arm] = 1.00; ds_spell.rescale[medium_arm] = 100.0;
        ds_spell.armorr[hard_arm]   = 1.00; ds_pure.rescale[hard_arm]    = 100.0;
        ds_spell.armorr[hero_arm]   = 0.88; ds_spell.rescale[hero_arm]   = 150.0;
        ds_spell.armorr[divine_arm] = 0.05; ds_spell.rescale[divine_arm] = 1000.0;
        ds_spell.armorr[forced_arm] = 1.00; ds_spell.rescale[forced_arm] = 100.0;

        ds_pure = dmgsystem.create();
        ds_pure.armorr[no_arm]      = 1.00; ds_pure.rescale[no_arm]      = 45.0;
        ds_pure.armorr[lite_arm]    = 1.00; ds_pure.rescale[lite_arm]    = 50.0;
        ds_pure.armorr[norm_arm]    = 1.00; ds_pure.rescale[norm_arm]    = 80.0;
        ds_pure.armorr[medium_arm]  = 1.00; ds_pure.rescale[medium_arm]  = 140.0;
        ds_pure.armorr[hard_arm]    = 1.00; ds_pure.rescale[hard_arm]    = 140.0;
        ds_pure.armorr[hero_arm]    = 1.00; ds_pure.rescale[hero_arm]    = 150.0;
        ds_pure.armorr[divine_arm]  = 2.00; ds_pure.rescale[divine_arm]  = 1000.0;
        ds_pure.armorr[forced_arm]  = 0.33; ds_pure.rescale[forced_arm]  = 175.0;

    }

endnamespace