#guard MessageEngine

namespace MessageEngine using TimeOut, GameData
	void Debug( wchar_t msg){
		call DisplayTimedTextToPlayer( LOCAL_USER, 0., 0., debug_lifespan, msg );
	}

#if gamedata_included
	void DisplayToAll(wchar_t msg){
		int i = 0;
		loop{
			if i:user.flag {
				call DisplayTimedTextToPlayer( i:user.player, 0., 0., default_ls_common, msg );
			};
			i++;
			exif( i == ( PLAYER_NEUTRAL_PASSIVE +1 ) );
		};
	};

	class msgine {
		wchar_t 	message 	= nil;
		int 		pid 		= no_data;
		countdown 	clock 		= no_data;
		float		lifespan	= default_lifespan

		destructor(){
			message = nil;
			clock.destroy();
			free self
		}

		__callback callback(){
			local self = countdown.expiredof(1)
			if this.pid > (no_data) { DisplayTimedTextToPlayer( user[this.pid].player, 0., 0., this.lifespan, this.message )} else {
				DisplayToAll(this.message);
			};
			if this.clock.autoLiquidation {
				this.destroy();
			};
		}

		void print(){ DisplayToAll(this.message) }
		void printlag(float time){ this.clock.push(-time, __api itself.callback ) };
		void printtoplayer(gamedata whom){ DisplayTimedTextToPlayer( whom.player, 0., 0., this.lifespan, this.message ) };
		void printlagtoplayer(float time, gamedata whom){ this.pid = whom.id; this.clock.push(-time, __api itself.callback ) };
		void add(wchar_t text, bool newLine){ if newLine { this.message = this.message + "\n"}; this.message += text };

		constructor(bool autoDestructible) {
			new self;
			this.clock = countdown.create(autoDestructible);
			this.clock.putdata(1,this)
			this.message = "\n";
			return this
		};
	}
#endif

endnamespace