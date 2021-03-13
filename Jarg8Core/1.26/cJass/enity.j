#guard enity

#define enity_included = true;
setdef uses_Enities = ,Enities 

namespace Enities using General

class object {
    unit    subject         = null;

    bool    isAbilityDamage = false;
    bool    isReturnDamage  = false;
    bool    isHero          = false;
    bool    isDummy         = false;

#if basedata_included
    baseunit basedata       = no_data;

    float   dodge_chance    = 0.0;
    float   block_chance    = 0.0;
    float   block_value     = 0.0;
    float   spell_crit      = 0.0;
    float   spell_chance    = 0.0;
    float   power_crit      = 0.0;
    float   power_chance    = 0.0;
#endif

    int     xint            = 0;
    int     xagi            = 0;
    int     xstr            = 0;

    float   resistance      = 0.0;
    float   manaresist      = 0.0;

    float   hp_regen        = 0.0;
    float   hpa_regen       = 0.0;
    float   mp_regen        = 0.0;
    float   mpa_regen       = 0.0;

#if gamedata_included
    gamedata ownership = no_data;

    gamedata whose(){ return user[GetPlayerId(GetOwningPlayer(this.subject))]}

    void owner(gamedata usr){ SetUnitOwner( this.subject, usr.player, true ) };
    void hirer(gamedata usr){ SetUnitOwner( this.subject, usr.player, false) };
#endif
    static int userdata(){ return GetUnitUserData( GetTriggerUnit() ) - 1 };
    static int userdataof(unit which) { return GetUnitUserData( which ) - 1 };
    int userdatais() { return GetUnitUserData( this.subject ) - 1 };
    void setuserdata( int data ) { SetUnitUserData( this.subject, data + 1 ) };
    void setuserdatafor( unit whom, int data ) { SetUnitUserData( whom, data +1 ) }

    void operator x=(float x){ SetUnitX( this.subject, x ) };
    float operator x(){ return GetWidgetX( this.subject ) };
    void operator y=(float y){ SetUnitY( this.subject, y ) };
    float operator y(){ return GetWidgetY( this.subject ) };
    float operator z(){ return GetUnitZ(this.subject ) };

    void operator life=(float lf){ SetWidgetLife( this.subject, flimm(lf,0.405)) };
    float operator life() { return GetWidgetLife( this.subject) };
    float operator maxlife() { return GetUnitState( this.subject, UNIT_STATE_MAX_LIFE )};
    void operator mana=(float m){ SetUnitState( this.subject, UNIT_STATE_MANA, flimm(m,00)) };
    float operator mana() { return GetUnitState( this.subject, UNIT_STATE_MANA ) };
    float operator maxmana() { return GetUnitState( this.subject, UNIT_STATE_MAX_MANA )};


    void operator intellect=( int newInt ) { SetHeroInt( this.subject, newInt, true ) };
    int operator intellect(){ return GetHeroInt( this.subject, false ) };
    int operator intellectfull(){ return GetHeroInt( this.subject, true ) };

    void operator agility=( int newAgi ) { SetHeroAgi( this.subject, newAgi, true ) };
    int operator agility(){ return GetHeroAgi( this.subject, false ) };
    int operator agilityfull(){ return GetHeroAgi( this.subject, true ) };

    void operator strength=( int newStr ) { SetHeroStr( this.subject, newStr, true ) };
    int operator strength(){ return GetHeroStr( this.subject, false ) };
    int operator strengthfull(){ return GetHeroStr( this.subject, true ) };

    void revive(float x, float y, bool b) { ReviveHero( this.subject, x, y, b ) };
    void revrct(rect r, bool b) { ReviveHero( this.subject, _rcx(r), _rcy(r), b ) };

    int typeId(){ return GetUnitTypeId(this.subject) };

    void moverect(rect r){ SetUnitPosition( this.subject, _rcx(r), _rcy(r) ) };
    void sel(){ SelectUnitForPlayerSingle( this.subject, ownership.player ) };
    void pan(){ PanCameraToTimedForPlayer( ownership.player, this.x, this.y, 0.0 )};

#if attribute_included
    int xarmor  = 0;
    int xattack = 0;
     void operator armorex=(int newint){
        this.xarmor += newint;
        xtSetBonusArmor( this.subject, this.xarmor );
    };
    int operator armorex(){ return this.xarmor};
#endif



#if basedata_included
 #if attribute_included
    int getArmor(bool withBonuses){ if this.isHero { return this.basedata.armor + this.xarmor + dex2armor( this.subject, withBonuses )}; return this.basedata.armor + this.xarmor };
    int getAttack(bool withBonuses){ if this.isHero { return this.basedata.attack + this.xattack + mainchar2attack( this.subject, this.basedata.mainchar, withBonuses ) }; return this.basedata.attack + this.xattack };
 #endif
#endif

    constructor(unit u){
        new self;
        this.subject = u;

        this.isDummy = GetUnitAbilityLevel(u, 'Aloc') > 0; this.isHero  = IsUnitType( u, UNIT_TYPE_HERO );
        this.setuserdata(this);
#if gamedata_included 
        this.ownership = this.whose();
#endif
#if basedata_included
        this.basedata = baseunit.data( GetUnitTypeId(u) );
#endif
        if this.isHero {
            this.hpa_regen = GetHeroStr( u, true ) * str_hps;
            this.mpa_regen = GetHeroInt( u, true ) * int_mps;
        }

        return this;
    }
}

class stuff {
    item        object          = nil;
#if gamedata_included
    gamedata    ownership       = no_data;
#endif
    bool        isSellable      = false
    bool        isVulnerable    = true
    bool        isBuyable       = false
    bool        hasOwner        = false

#if basedata_included
    baseitem    basedata        = no_data
#endif

#if gamedata_included
    gamedata itemowner() { return user[GetPlayerId(GetItemPlayer(this.object))] };
    void toitemowner(gamedata whom){ this.ownership = whom; SetItemPlayer( this.object, whom.player, true ) };
#endif

    constructor(item thing){
        new self;
            this.object     = thing;
#if gamedata_included
            this.ownership  = this.itemowner()
            this.hasOwner   = hasOwner
#endif
            this.isSellable = IsItemPawnable( this.object )
            this.isBuyable  = IsItemSellable( this.object )
            this.hasOwner   = IsItemOwned( this.object )

        return this;
    }
}

object CreateObject(gamedata who, int unitId, float x, float y, float f ){
    return object.create( CreateUnit( who.player, unitId, x, y, f ) )
}

stuff CreateStuff(int itemId, float x, float y ) {
    return stuff.create( CreateItem( itemId, x, y ) )
}

define{
    <new object>( who, id )         = CreateObject( who, id, 0., 0., 0. )
    <new object>( who, id, rct )    = CreateObject( who, id, GetRectCenterX(rct), GetRectCenterY(rct), 270. )
    <new object>( who, id, x, y )   = CreateObject( who, id, x,  y,  0. )
    <new object>( who, id, x, y, f) = CreateObject( who, id, x,  y,  f  )
    <new stuff> ( id )              = CreateStuff( id, 0., 0. )
    <new stuff> ( id, x, y )        = CreateStuff( id, x,  y  ) 
}


endnamespace