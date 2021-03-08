#guard enity

#define enity_included = true;

#if attribute_included 
namespace Enities using General, Attributes
#else
namespace Enities using General
#endif

class object {
	unit 	subject 		= null

	bool 	isAbilityDamage = false;
	bool 	isReturnDamage	= false;
	bool 	isHero 			= false;
	bool 	isDummy			= false;

#if basedata_included
 	baseunit basedata 		= no_data;
#endif

	int 	xint			= 0
	int		xagi 			= 0
	int 	xstr			= 0

	float 	resistance 		= 0.0
	float 	manaresist		= 0.0

#if gamedata_included
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

	void operator intellect=( int newInt ) { SetHeroInt( this.subject, newInt, true ) };
	int operator intellect(){ return GetHeroInt( this.subject, false ) };
	int operator intellectfull(){ return GetHeroInt( this.subject, true ) };

	void operator agility=( int newAgi ) { SetHeroAgi( this.subject, newAgi, true ) };
	int operator agility(){ return GetHeroAgi( this.subject, false ) };
	int operator agilityfull(){ return GetHeroAgi( this.subject, true ) };

	void operator strength=( int newStr ) { SetHeroStr( this.subject, newStr, true ) };
	int operator strength(){ return GetHeroStr( this.subject, false ) };
	int operator strengthfull(){ return GetHeroStr( this.subject, true ) };

#if attribute_included
	int xarmor 	= 0;
	int xattack = 0;
	 void operator armorex=(int newint){
		this.xarmor += newint;
		xtSetBonusArmor( this.subject, this.xarmor );
	};
	int operator armorex(){ return this.xarmor};
#endif



#if basedata_included
 #if attribute_included
	int getArmor(){ if this.isHero { return this.baseunit.armor + this.xarmor + dex2armor( this.subject )}; return this.baseunit.armor + this.xarmor };
	int getAttack(){ if this.isHero { return this.baseunit.attack + this.xattack + mainchar2attack( this.subject, this.mainchar ) }; return this.baseunit.attack + this.xattack };
 #endif
#endif

	constructor(unit u){
		new self;
		this.subject = u;

		this.isDummy = GetUnitAbilityLevel(u, 'Aloc') > 0; this.isHero  = IsUnitType( u, UNIT_TYPE_HERO );
		this.setuserdata(this)

#if basedata_included
		this.basedata = baseunit.data( GetUnitTypeId(u) );
#endif

		return this;
	}
};

class stuff {
	item 		object 			= nil;
#if gamedata_included
	gamedata 	ownership		= no_data;
#endif
	bool 	 	isSellable		= false
	bool 		isVulnerable 	= true
	bool 		isBuyable		= false
	bool 		hasOwner		= false

#if basedata_included
	baseitem	basedata 		= no_data
#endif

#if gamedata_included
	gamedata itemowner() { return user[GetPlayerId(GetItemPlayer(this.object))] };
 	void toitemowner(gamedata whom){ this.ownership = whom; SetItemPlayer( this.object, whom.player, true ) };
#endif

	constructor(item thing){
		new self;
			this.object 	= thing;
#if gamedata_included
			this.ownership 	= this.itemowner()
			this.hasOwner  	= hasOwner
#endif
			this.isSellable = IsItemPawnable( this.object )
			this.isBuyable 	= IsItemSellable( this.object )
			this.hasOwner 	= IsItemOwned( this.object )

		return this;
	}
}

endnamespace