#guard timeout

#define timeout_included = true

namespace TimeOut using General

    class countdown {
        timer chronometer       = null;
        bool  autoLiquidation   = false;
        int   tick              = 0;
        int   alarm             = 0;
        int   count             = 0;
        int   account           = 0;
        int   final             = 0;

        int   handleId          = 0;
        bool  onRepeat          = false;
        real  currentPeriod     = 0.;
        
        bool  isWork            = false;

        char_t funcName         = null;

        void resetCounters(){
            this.tick       = 0;
            this.account    = 0;
            this.count      = 0;
        };

        void stop(){
            PauseTimer(this.chronometer);
            this.isWork = false
        };

        void continue(){
            ResumeTimer(this.chronometer);
            this.isWork = true
        };

        destructor(){
            if ( this.isWork ) { this.stop()};
            DestroyTimer(this.chronometer);
            this.chronometer = null;        
            free self
        };

        void start(float period, bool isRepeat){
            this.onRepeat       = isRepeat;
            this.currentPeriod  = period;
            this.isWork = true;
            TimerStart( this.chronometer, this.currentPeriod, this.onRepeat, null )
        };

        void restart(){
            this.stop();
            TimerStart( this.chronometer, this.currentPeriod, this.onRepeat, null )
            this.isWork = true;
        };

        static int expired(){
            return LoadInteger( xash, HDL_EXPIRED, 0 )
        };

        static int expiredof(int index){
            return LoadInteger( xash, HDL_EXPIRED, index )
        }

        void putdata( int index, int data){
            if index != null_ptr {
                SaveInteger( xash, this.handleId, index, data );
            }
        };

        int takedata( int index ){
            return LoadInteger( xash, this.handleId, index )
        };

        float remaining(){
            return TimerGetRemaining( this.chronometer )
        };

        float elapsed(){
            return TimerGetElapsed( this.chronometer )
        };

        float out(){
            return TimerGetTimeout( this.chronometer )
        };

        void re(code src){
            this.stop();
            TimerStart( this.chronometer, this.currentPeriod, this.onRepeat, src );
            this.isWork = true
        };

        void launch(float period, bool isRepeat, code src){
            this.onRepeat       = isRepeat;
            this.currentPeriod  = period;
            this.isWork = true;
            TimerStart( this.chronometer, this.currentPeriod, this.onRepeat, src )
        };

        void push(real period, code src){
            this.onRepeat       = period > 0.0;
            this.currentPeriod  = ( 1.0 - B2R(not this.onRepeat) * 2.0 ) * period;
            this.isWork = true;
            TimerStart( this.chronometer, this.currentPeriod, this.onRepeat, src )
        };

        __callback shell(){
            local self = itself.expired()
            execute(this.funcName);
            if autoLiquidation {
                this.destroy();
            };
        };

        void overExecute(float time, char_t wfName ){
            this.funcName =  wfName;
            this.isWork     = true;
            
            this.onRepeat   = false;
            this.currentPeriod = time;

            TimerStart( this.chronometer, time, false, __api itself.shell )
        }



        constructor(bool autoDestructible){
            new self;
                this.chronometer = CreateTimer();
                this.handleId    = HDL(this.chronometer);
                call SaveInteger( xash, this.handleId, 0, this );
            return this
        };
    };  


    class limb {
        timerdialog digital = nil;
        countdown   clock   = no_data;

        constructor( bool newtimer, bool autoDestructible, countdown cd){
            new self;
                if newtimer {
                    this.clock = countdown.create(autoDestructible);
                } elseif cd != (no_data) { clock = cd };
            return this
        }

    }

endnamespace 