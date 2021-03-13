#guard cjass

define {
    int         = integer
    wchar_t     = string
    char16_t    = string
    char32_t    = string
    char_t      = string
    bool        = boolean
    float       = real
    void        = nothing
    nil         = null
    null_ptr    = 0 

    break       = exitwhen true
    <_rect>( r )    = gg_rct_##r 
    exif( b )   = exitwhen b

    pragma      = scope
    endpragma   = endscope
    <__onload>   = initializer
    class       = struct
    constructor = static thistype create
    destructor  = void destroy  
    <new self>  = thistype this = thistype.allocate()
<local self>    = thistype this
<static self>   = static thistype
<__self>        = static thistype
    itself      = thistype
    <free self> = this.deallocate() 
    namespace   = library
endnamespace    = endlibrary
    using       = requires
    execute(f)  = ExecuteFunc(f)
    <__api>     = function

    HDL(h)      = GetHandleId(h)
    HDL_EXPIRED = GetHandleId(GetExpiredTimer())

   <__callback> = static void 
   LOCAL_USER   = GetLocalPlayer()
    no_data     = -1
    <_rcx>(r)   = GetRectCenterX(r)
    <_rcy>(r)   = GetRectCenterY(r)
    <_rrx>(r)   = GetRandomReal( GetRectMinX(r) - 50., GetRectMaxX(r) + 50.)
    <_rry>(r)   = GetRandomReal( GetRectMinY(r) - 50., GetRectMaxY(r) + 50. )
    RXX(r)      = GetRectMaxX(r)
    RNX(r)      = GetRectMinX(r)
    RXY(r)      = GetRectMaxY(r)
    RNY(r)      = GetRectMinY(r)
<_RR>(r1,r2)    = GetRandomReal(r1,r2)
<_RI>(i1,i2)    = GetRandomInt(i1,i2)
    const       = constant

 <_2R>          = 57.2958279 
 <_2D>          =.01745327
}

/* GAMEDATA */

#define const_computer_on_include   = false

/* MESSAGE ENGINE*/
#define default_lifespan            = 20.00
#define debug_lifespan              = 60.00
#define default_ls_common           = 30.00