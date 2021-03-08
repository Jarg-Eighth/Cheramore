#guard basedata

#define basedata_included = true

namespace BaseData __onload Init using General
	private hashtable datex	= nil

	class baseunit {
		int 	intellect 	= 0;
		int 	agility   	= 0;
		int 	strength  	= 0;
		int 	hp 		  	= 0;
		int 	mp 		  	= 0;
		int 	attack 		= 0;
		int 	attackspeed = 0; /* in percentage*/

		float 	hp_regen 		= 0.0;
		float 	mp_regen 		= 0.0;
		float 	resistance		= 0.0;
		float 	mbr_resist		= 0.0; /* manaburn resistance */	
		float 	spell_crit 		= 0.0;
		float 	spell_chance	= 0.0;
		float 	power_crit		= 0.0;
		float	power_chance	= 0.0;
		float	block_value		= 0.0;
		float	block_chance	= 0.0;
		float 	dodge_chance 	= 0.0; /* evasions */

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
		int 	intellect 	= 0;
		int 	agility   	= 0;
		int 	strength  	= 0;
		int 	hp 		  	= 0;
		int 	mp 		  	= 0;
		int 	attack 		= 0;
		int 	attackspeed = 0; /* in percentage*/

		float 	hp_regen 		= 0.0;
		float 	mp_regen 		= 0.0;
		float 	resistance		= 0.0;
		float 	mbr_resist		= 0.0; /* manaburn resistance */	
		float 	spell_crit 		= 0.0;
		float 	spell_chance	= 0.0;
		float 	power_crit		= 0.0;
		float	power_chance	= 0.0;
		float	block_value		= 0.0;
		float	block_chance	= 0.0;
		float 	dodge_chance 	= 0.0; /* evasions */

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

	private Init(){
		datex = InitHashtable();
	}

endnamespace