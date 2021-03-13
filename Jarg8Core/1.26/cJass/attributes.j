#guard attributes

#define attribute_included = true

setdef uses_Attributes = ,Attributes

enum (mainattributes){ main_str, main_agi, main_int };

namespace Attributes __onload Init using General
    
    int         Pow2        []
    bool        Pow2Buffer  []
    int         Pow2Count   null_ptr


    attribute attrintellect = no_data
    attribute attmintellect = no_data
    attribute attrstrength  = no_data
    attribute attmstrength  = no_data
    attribute attragility   = no_data
    attribute attmagility   = no_data
    attribute attrattack    = no_data
    attribute attrratio     = no_data
    attribute attrhealth    = no_data
    attribute attrmana      = no_data
    attribute attrarmor     = no_data

    class attribute {
        int bonus[31];
        int count       = 0;
        int maxvalue    = 0;
        int minvalue    = 0;

        destructor(){
            
            int i = 0;
            
            loop{
                this.bonus[i] = 0;
                i++;
                exif(i == this.count);
            };

            this.count      = 0;
            this.minvalue   = 0;
            this.minvalue   = 0;
            free self;
        };

        void add(int attr){
            this.bonus[count] = attr;
            this.count++;
        };

        constructor(int min, int max){
            new self;
            this.minvalue = min; this.maxvalue = max
            return this;
        };
    };

    void xtSetBonusArmor( unit u, int newArmor){
        int z = 0, m = 0, l = 1 + B2I( newArmor < 0 ); 
        loop{
            UnitRemoveAbility( u, attrarmor.bonus[z] );
            z++;
            exif( z == attrarmor.count );
        };
        z = lim( newArmor, attrarmor.minvalue, attrarmor.minvalue ); Pow2Count = 0;
        z = z * ( 1 - B2I( z < 0 ) * 2 );
        
        if z > 0 {
            loop{
                m = MI(z,2); Pow2Count:Pow2Buffer = m > 0; Pow2Count++;
                z /= 2;
                exif( z == 0 );
            };
            m = Pow2Count - 1;
            z = Pow2Count;
            loop{
                z--;
                if z:Pow2Buffer { UnitAddAbility( u, attrarmor.bonus[m-z] ); SetUnitAbilityLevel( u, attrarmor.bonus[m-z], l ) };
                exif(z==0)
            }
        };
    }

    public void Init(){
        int i = 0;
        loop{
            i:Pow2Buffer = false;
            i++;
            exif(i == 31)
        }
        Pow2[0] = 1; Pow2[1] = 2; Pow2[2] = 4; Pow2[3] = 8; Pow2[4] = 16; Pow2[5] = 32;
        Pow2[6] = 64; Pow2[7] = 128; Pow2[8] = 256; Pow2[9] = 512; Pow2[10] = 1024; Pow2[11] = 2048;
        Pow2[12] = 4096; Pow2[13] = 8192; Pow2[14] = 16384; Pow2[15] = 32768; Pow2[16] = 65536; Pow2[17] = 131072;
        Pow2[18] = 262144; Pow2[19] = 524288; Pow2[20] = 1048576; Pow2[21] = 2097152; Pow2[22] = 4194304; Pow2[23] = 8388608;
        Pow2[24] = 16777216; Pow2[25] = 33554432; Pow2[26] = 67108864; Pow2[27] = 134217728; Pow2[28] = 268435456; Pow2[29] = 536870912;
        Pow2[30] = 1073741824;
    }
endnamespace