#guard ttager

#ttager_included = true
setdef uses_TTager = ,TTager 
 
namespace TTager using General uses_TimeOut     
        class ttag {
            texttag tag         = nil;
            float   size        = 10.0;
            float   velocity    = 64.0;
            float   degree      = 90.0;
            float   x           = 0.0;
            float   y           = 0.0;
            string  text        = "Text Tag!";
            float   life        = 0.0;
            countdown cd        = no_data; 
            
            void place(){
                SetTextTagText( this.tag, this.text, this.size * 0.0023 );
                SetTextTagPos( this.tag, this.x, this.y, 0.0 );
                if this.life > 0.0 { SetTextTagVisibility( this.tag, IsVisibleToPlayer( this.x, this.y, LOCAL_PLAYER ) ) };
            }

            retext(char16_t txt){
                this.text = txt;
                SetTextTagText( this.tag, this.text, this.size * 0.0023 );
            };

#if enity_included
            void obj( object o){
                SetTextTagPosUnit( this.tag, o.subject, 0.0 );
            }
#endif
            void vel(){
                float speed = this.velocity * 0.0005546875;
                float xs    = speed * Cos( this.degree * _2R );
                float xy    = speed * Sin( this.degree * _2R );
            };

#if vectors_included 
            void rbga(vcolor vcl){
                SetTextTagColor( this.tag, vcl.red, vcl.green, vcl.blue, vcl.alpha );
            };
#endif
            void spawn(){
                if this.life > 0.0 {
                    this.cd = countdown.create(false);
                    this.place();
                    this.vel();
                    this.cd.putdata(1,this);
                    this.cd.push(-this.life, __api itself.endlife );
                };
            };
        }

    endnamespace

#endif