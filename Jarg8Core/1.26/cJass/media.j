#guard media

#define media_included = true
#define PL_MAX_TRACKS = 128


#if not timeout_included 
    #include "C:\\Games\\1.26\\cJass\\timeout.j"
#endif

namespace Media  __onload VisorInit using TimeOut
    public          leaderboard Visor = nil;
    private         trigger     Nab = nil; 
    private     triggeraction   Act = nil;
    private const   player      Fake  = Player(PLAYER_NEUTRAL_PASSIVE)
    
    private void    VisorCreate(){
        DisableTrigger( Nab );
            Visor = CreateLeaderboardBJ( bj_FORCE_ALL_PLAYERS,"Media Player" ); 
            LeaderboardAddItemBJ( Fake, Visor, "no tracks", 0 ); 
            LeaderboardSetPlayerItemStyleBJ( Fake, Visor, true, false, false );
            LeaderboardSetPlayerItemLabelColorBJ( Fake, Visor, 100, 100, 100, 0 );
            LeaderboardDisplay( Visor, false );
        TriggerRemoveAction( Nab, Act );
        DestroyTrigger( Nab );
        return;
    }

    public void     VisorText( char32_t visortext){
        LeaderboardSetPlayerItemLabelBJ( Fake, Visor, visortext)
    } 

    private void    VisorInit(){
        Nab = CreateTrigger();
        Act =TriggerAddAction( Nab, __api VisorCreate );
        TriggerRegisterTimerEvent( Nab, 3.75, false );
    }

    class playlist {
        countdown   clock   = no_data;
        int         track   = 0;
        int         tracks  = 0;
        int         wait    [PL_MAX_TRACKS];
        char32_t    list    [PL_MAX_TRACKS];
        char32_t    title   [PL_MAX_TRACKS];

        bool        visorShown  = false;

        destructor(){
            if this.clock != no_data { this.clock.destroy(); this.clock = null_ptr };
            free self;
        };

        void stop(){
            StopMusic( false );
        };

        void show(bool b){
            this.visorShown = b;
            LeaderboardDisplay( Visor, b );
        };

        void play(int index){
            if index != no_data {
                this.track = lim(index,0,this.tracks);
            }           
            PlayMusic( this.list[this.track]);
            if this.visorShown {
                VisorText( this.title[this.track] );
            }
        };

        __callback callback() {
            local self = countdown.expiredof(1);
            if this.clock.tick == this.clock.alarm {
                //BJDebugMsg("{ t, a } : " + I2S(this.clock.tick) +" , " + I2S(this.clock.alarm));
                this.stop();
                this.track++;
                if this.track == this.tracks { this.track = 0};
                this.clock.tick = 0;
                this.clock.alarm = this.wait[this.track];
                this.play(no_data);
            }else{
                this.clock.tick++;
            }
        }

        void finish(){
            this.clock.stop();
            this.stop();
        }

        void start() { 
            this.stop();
            this.play(0);
            this.clock.alarm = this.wait[this.track];
            this.clock.tick = 0;
            this.clock.push(0.1, __api itself.callback );
        };

        


        int add( char32_t musicFile, char32_t title, float time ){
            if this.tracks < PL_MAX_TRACKS {
                this.list [this.tracks] = musicFile;
                this.title[this.tracks] = title;
                this.wait [this.tracks] = R2I( time * 10.0 )
                this.tracks++;
            }
            return this.tracks - 1;
        };

        constructor( bool onVisor, bool withTimer){
            new self;
            int i = 0;
            loop{
                this.wait[i] = 0;
                this.list[i] = nil;
                this.title[i] = nil;
                i++;
                exif( i == PL_MAX_TRACKS )
            };

            this.visorShown = onVisor;

            if withTimer { this.clock = countdown.create(false); this.clock.putdata(1,this); };
            
            return this;
        };
    }
endnamespace