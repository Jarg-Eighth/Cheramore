#guard pawls

#define pawls_included = true
setdef uses_Pawls = ,Pawls

namespace Pawls using General uses_TimeOut uses_Enities uses_GameData



    class pawl {

        trigger             data = nil;
        triggeraction       tact = nil;
        triggercondition    tcon = nil;
        conditionfunc       conf = nil;
        filterfunc          ffun = nil;

        bool                autoDestroying = false

        destructor(){
            if this.tact != nil { TriggerRemoveAction( this.data, this.tact); this.tact = nil };
            if this.tcon != nil { TriggerRemoveCondition( this.data, this.tcon); this.tcon = nil };
            if this.conf != nil { DestroyCondition( this.conf); this.conf = nil };
            if this.ffun != nil { DestroyFilter( this.ffun); this.ffun = nil };

            if autoDestroying {
                if this.data != nil { DestroyTrigger( this.data); this.data = nil };
            };

            free self;
        };

        void assign( itself xt){
            this.data = xt.data;
        };

        void action( code src ){
            this.tact = TriggerAddAction( this.data, src );
        };

        void condition( code src){
            this.conf  = Condition(src); this.tcon = TriggerAddCondition( this.data, this.conf );
        };

        void filter( code src){
            this.ffun = Filter(src)
        };
#if gamedata_included
        void eventArmy( gamedata who, playerunitevent eve ){
            if this.ffun != nil { TriggerRegisterPlayerUnitEvent( this.data, who.player, eve, this.ffun ) } else { 
                TriggerRegisterPlayerUnitEvent( this.data, who.player, eve, nil ) };            
        };

        void eventLeader( gamedata who, playerevent eve){
            TriggerRegisterPlayerEvent( this.data, who.player, eve );
        };
#endif

        void eventFloat(char_t varname, limitop lo, float value ){
            TriggerRegisterVariableEvent( this.data, varname, lo, value );
        };

#if enity_included 
        void eventObject( object o, unitevent eve) { TriggerRegisterUnitEvent( this.data, o.subject, eve ) };
#endif

#if timeout_included
        void eventAlarm( countdown cd ) { TriggerRegisterTimerExpireEvent( this.data, cd.chronometer )};
#endif
        void interval( float time ){ TriggerRegisterTimerEvent( this.data, time, true ) };
        void lag( float time) { TriggerRegisterTimerEvent( this.data, time, false) }
        void dedecor( destructable d ) { TriggerRegisterDeathEvent( this.data,  d ) };

        constructor(bool isNewTrigger, bool isAutoDestroying ){
            new self;
                if isNewTrigger { this.data = CreateTrigger() };
                isAutoDestroying = this.autoDestroying
            return this;
        }
    }

endnamespace
