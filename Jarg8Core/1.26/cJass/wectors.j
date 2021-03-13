#guard wectors


#define vectors_included = true;
setdef uses_Vectors = ,Vectors

namespace Vectors __onload Init using General
    
    vcolor Red          = null_ptr;
    vcolor Blue         = null_ptr;
    vcolor Cyan         = null_ptr;
    vcolor Purple       = null_ptr;
    vcolor Yellow       = null_ptr;
    vcolor Orange       = null_ptr;
    vcolor Green        = null_ptr;
    vcolor Pink         = null_ptr;
    vcolor LightGray    = null_ptr;
    vcolor LightBlue    = null_ptr;
    vcolor Aqua         = null_ptr;
    vcolor Brown        = null_ptr;

    vcolor Hostile      = null_ptr;
    vcolor Neutral      = null_ptr;
    vcolor Extra        = null_ptr;
    vcolor Victim       = null_ptr;

    vcolor pcolor[];

    class vcolor {
        wchar_t hex = "";
        int red     = 0;
        int green   = 0;
        int blue    = 0;
        int alpha   = 0;

        destructor(){
            hex = nil;
            free self;
        }

        void tohex(){
            this.hex = "|c" + Hex2Format(Int2Hex(this.alpha)) + Hex2Format(Int2Hex(this.red)) + Hex2Format(Int2Hex(this.green)) +  Hex2Format(Int2Hex(this.blue))
        }

        void random(){
            this.red = _RI(0,255); this.green = _RI(0,255); this.blue = _RI(0,255); this.alpha = _RI(0,255);
        }

        void rred(){ this.red = _RI(0,255)}; void rgreen(){this.green = _RI(0,255)}; void rblue(){ this.blue = _RI(0,255)}; void ralpha(){ this.alpha = _RI(0,255)};

        constructor(int r, int g, int b, int a, wchar_t hx){
            new self;
            
            if r <= no_data { this.rred() };  if g <= no_data { this.rgreen() }; if b <= no_data { this.rblue() }; if a <= no_data { this.ralpha() }; 

            if hx != nil {
                this.hex = "|cff"+ hx;
            }

            return this;
        }
    }

    void Init(){
        Red        = vcolor.create( 255,   3,   3, 255, "ff0303" );
        Blue       = vcolor.create(   0,  66, 255, 255, "0042ff" );
        Cyan       = vcolor.create(  27, 231, 186, 255, "1be7ba" );
        Purple     = vcolor.create(  85,  0,  129, 255, "550081" );
        Yellow     = vcolor.create( 255, 252,   0, 255, "fffc00" );
        Orange     = vcolor.create( 255, 138,  13, 255, "ff8a0d" );
        Green      = vcolor.create(  33, 192,   0, 255, "21c000" );
        Pink       = vcolor.create( 228,  92, 176, 255, "e45cb0" );
        LightGray  = vcolor.create( 148, 150, 151, 255, "949697" );
        LightBlue  = vcolor.create( 126, 192, 242, 255, "7ec0f2" );
        Aqua       = vcolor.create(  16,  98,  71, 255, "106247" );
        Brown      = vcolor.create(  79,  43,   5, 255, "4f2b05" );

        Hostile    = vcolor.create(  40,  40,  40, 255, "282828" );
        Extra      = vcolor.create( 128,  60, 100, 255, "803c64" );
        Victim     = vcolor.create( 100, 128,  60, 255, "64803c" );
        Neutral    = vcolor.create(  96,  96,  96, 255, "606060" );


        pcolor[0] = Red;        pcolor[1] = Blue;       pcolor[2]  = Cyan;  pcolor[3]  = Purple;
        pcolor[4] = Yellow;     pcolor[5] = Orange;     pcolor[6]  = Green; pcolor[7]  = Pink;
        pcolor[8] = LightGray;  pcolor[9] = LightBlue;  pcolor[10] = Aqua;  pcolor[11] = Brown;

        pcolor[ PLAYER_NEUTRAL_AGGRESSIVE ] = Hostile;
        pcolor[ bj_PLAYER_NEUTRAL_VICTIM  ] = Victim;
        pcolor[ bj_PLAYER_NEUTRAL_EXTRA   ] = Extra;
        pcolor[ PLAYER_NEUTRAL_PASSIVE    ] = Neutral;

    }
endnamespace