#guard executer

#define executer_included = true
setdef uses_Executers = ,Executers

namespace Executers __onload Init
    pawl map_executer = no_data;
    private exec ex   = no_data;
    int me_total      = 0

    class exec {
        int     tick = 0;
        object  o    = no_data;
        char_t  fexe;
        bool    isRun = false;

        destructor(){
            this.fexe = null;
            free self;
        }

        void run(){ this.isRun = true};
        void bruh(){ this.isRun = false};

        constructor(char_t fnc, bool isRun){
            new self;
                this.fexe = fnc;
                this.isRun = isRun;
                if me_total <= this {
                    me_total = this + 1;
                }
            return this;
        }
    }

    private void Act(){
        int i = 0;
        if me_total > 0 {
            loop {
                ex = i;
                if ex.isRun {
                    execute(ex.fexe);
                };
                i++;
                exif( i== me_total);
            };
        };
    };

    exec GetLastExec(){
        return ex;
    }

    private void Init(){
        map_executer = pawl.create(true,true);
        map_executer.action( __api Act );
        map_executer.interval( 0.05 );
    }

endnamespace