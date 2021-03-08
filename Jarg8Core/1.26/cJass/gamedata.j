#guard gamedata

#define gamedata_included  = true

namespace GameData using General
	private int 	account = 0	
	private bool	isIncludeComputers = const_computer_on_include

	gamedata user[] 

	class gamedata {
		bool	flag 	= false;
		#if const_computer_on_include == true
		bool	comp 	= false;
		#endif
		player 	player 	= null;
		bool 	neutral = false;
#if enity_included
		object 	hero	= no_data;
#endif
		char_t 	name 	= null;
		int 	id 		= 0;

		destructor(){
			this.player = null;
#if enity_included
			if this.hero != no_data {
			this.hero.destroy();
			}
#endif
			this.name = null;
			free self
		};

		wchar_t nameis(){ return this.name };
		playercolor color(){ return GetPlayerColor(this.player) };

		void toname(wchar_t newName ){ SetPlayerName( this.player, newName ); this.name = newName };
		void tocolor(playercolor newcolor){ SetPlayerColor( this.player, newcolor); ColorUnits( this.player, newcolor ) };

		void send(wchar_t msg){ DisplayTextToPlayer( this.player, 0., 0., msg) };
		void sendt(wchar_t msg, float time){ DisplayTimedTextToPlayer( this.player, 0., 0., time, msg ) };

		constructor(int id){
			new self;
			this.player = Player(id);
			#if const_computer_on_include == true;
			 this.comp = GetPlayerController( this.player ) == MAP_CONTROL_COMPUTER;
			 this.flag =  ( GetPlayerController( this.player ) == MAP_CONTROL_USER || this.comp ) && GetPlayerSlotState( this.player)  == PLAYER_SLOT_STATE_PLAYING;
			#else
			 this.flag = GetPlayerController( this.player ) == MAP_CONTROL_USER && GetPlayerSlotState( this.player)  == PLAYER_SLOT_STATE_PLAYING;
			#endif

			if this.flag {
				this.name = GetPlayerName(this.player); this.id   = GetPlayerId(this.player); account++;
			} else { this.neutral = GetPlayerController(this.player) == MAP_CONTROL_NEUTRAL || GetPlayerController(this.player) == MAP_CONTROL_CREEP };

			this.id:user = this;
			return this
		};
	}
endnamespace