globals
    // KJ ADDON CONSTANTS [OPERANDS]
    constant    string          kj_ADDON_CHAT_MINUS             = "-"
    constant    string          kj_ADDON_CHAT_PLUS              = "+"
    constant    string          kj_ADDON_CHAT_EQUAL             = "="
    constant    string          kj_ADDON_CHAT_OPEN_STRING       = "<"
    constant    string          kj_ADDON_CHAT_CLOSE_STRING      = ">"
    constant    string          kj_ADDON_CHAT_SPACE             = " "
    // KJ ADDON CONSTANTS [COLOR OF PLAYERS?]
    constant    string          kj_RED                          = "red"
    constant    string          kj_BLUE                         = "blue"
    constant    string          kj_CYAN                         = "cyan"
    constant    string          kj_PURPLE                       = "purple"
    constant    string          kj_YELLOW                       = "yellow"
    constant    string          kj_ORANGE                       = "orange"
    constant    string          kj_GREEN                        = "green"
    constant    string          kj_PINK                         = "pink"
    constant    string          kj_LIGHT_GRAY                   = "lightgray"
    constant    string          kj_LIGHT_BLUE                   = "lightblue"
    constant    string          kj_AQUA                         = "aqua"
    constant    string          kj_BROWN                        = "brown"
	// <\ KJ ADDON CONSTANTS [COLOR OF PLAYERS?] PATCH >~ 1.31?
	constant    string          kj_MAROON                       = "maroon"
	constant    string          kj_NAVY                         = "navy"
	constant    string          kj_TURQUOISE               	 	= "turquoise"
	constant    string          kj_VIOLET                       = "violet"
	constant    string          kj_WHEAT                        = "wheat"
	constant    string          kj_PEACH                        = "peach"
	constant    string          kj_MINT                         = "mint"
	constant    string          kj_LAVENDER                     = "lavender"
	constant    string          kj_COAL                         = "coal"
	constant    string          kj_SNOW                         = "snow"
	constant    string          kj_EMERALD                      = "emerald"
	constant    string          kj_PEANUT                       = "peanut"
	// KJ ADDON CONSTANTS [COLOR OF PLAYERS?] PATCH >~ 1.31? END />
	// KJ ADDON CONSTANTS [COLOR OF NEUTRALS?] 
    constant    string          kj_AGGRESSIVE                   = "aggressive"
    constant    string          kj_VICTIM                       = "victim"
    constant    string          kj_EXTRA                        = "extra"
    constant    string          kj_PASSIVE                      = "passive"
    // KJ ADDON CONSTANTS [PLAYERCOLOR OF NEUTRALS?] 
    constant    playercolor     kj_PLAYER_COLOR_AGGRESSIVE      = ConvertPlayerColor(PLAYER_NEUTRAL_AGGRESSIVE)
    constant    playercolor     kj_PLAYER_COLOR_VICTIM          = ConvertPlayerColor(bj_PLAYER_NEUTRAL_VICTIM)
    constant    playercolor     kj_PLAYER_COLOR_EXTRA           = ConvertPlayerColor(bj_PLAYER_NEUTRAL_EXTRA)
    constant    playercolor     kj_PLAYER_COLOR_PASSIVE         = ConvertPlayerColor(PLAYER_NEUTRAL_PASSIVE)
                playercolor     kj_lastPlayerColor              = null
				
    // KJ ADDON CONSTANTS [CHACT COMMANDS?] 
    constant    string          kj_ADDON_CHAT_CREATE            = "create"
    constant    string          kj_ADDON_CHAT_CREATE2           = "c"
    constant    string          kj_ADDON_CHAT_CREATE3           = "-c"
    constant    string          kj_ADDON_CHAT_CREATE_XY         = "createxy"
    constant    string          kj_ADDON_CHAT_CREATE_XY2        = "cxy"
    constant    string          kj_ADDON_CHAT_CREATE_XY3        = "-cxy"
    constant    string          kj_ADDON_CHAT_GOLDMINEGOLD      = "goldminegold"
    constant    string          kj_ADDON_CHAT_GOLDMINEGOLD2     = "gg"
    constant    string          kj_ADDON_CHAT_DCREATE           = "dcreate"
    constant    string          kj_ADDON_CHAT_GIVE_ITEM         = "giveitem"
    constant    string          kj_ADDON_CHAT_GIVE_ITEM2        = "gi"
    constant    string          kj_ADDON_CHAT_CREATE_ITEM       = "item"
    constant    string          kj_ADDON_CHAT_CREATE_ITEM2      = "i"
    constant    string          kj_ADDON_CHAT_DCREATE2          = "dc"
    constant    string          kj_ADDON_CHAT_POSITION          = "position"
    constant    string          kj_ADDON_CHAT_POSITION2         = "p"
    constant    string          kj_ADDON_CHAT_GOLD              = "gold"
    constant    string          kj_ADDON_CHAT_GOLD2             = "g"
    constant    string          kj_ADDON_CHAT_SELECTED          = "selectedgroup"
    constant    string          kj_ADDON_CHAT_SELECTED2         = "sg"
    constant    string          kj_ADDON_CHAT_ABILITY           = "ability"
    constant    string          kj_ADDON_CHAT_ABILITY2          = "ab"
    constant    string          kj_ADDON_CHAT_RESEARCH          = "research"
    constant    string          kj_ADDON_CHAT_RESEARCH_LIMIT    = "researchlimit"
    constant    string          kj_ADDON_CHAT_RESEARCH2         = "rc"
    constant    string          kj_ADDON_CHAT_RESEARCH_LIMIT2   = "rcl"
    constant    string          kj_ADDON_CHAT_RESETCD           = "resetabilitycooldowns"
    constant    string          kj_ADDON_CHAT_RESETCD2          = "rac"
    constant    string          kj_ADDON_CHAT_ALLY              = "ally"
    constant    string          kj_ADDON_CHAT_ALLY2             = "pact"
    constant    string          kj_ADDON_CHAT_ALLY_ALLY         = "a"
    constant    string          kj_ADDON_CHAT_ALLY_ALLY_PLUS    = "a+"
    constant    string          kj_ADDON_CHAT_ALLY_ENEMY        = "e"
    constant    string          kj_ADDON_CHAT_ALLY_ENEMY_PLUS   = "e+"
    constant    string          kj_ADDON_CHAT_ALLY_NEUTRAL      = "n"
    constant    string          kj_ADDON_CHAT_ALLY_NEUTRAL_PLUS = "n+"
    constant    string          kj_ADDON_CHAT_ALLY_FRIEND       = "f"
    constant    string          kj_ADDON_CHAT_ALLY_FRIEND_PLUS  = "f+"
    constant    string          kj_ADDON_CHAT_AUTOPROGRESS      = "autoprogress"
    constant    string          kj_ADDON_CHAT_AUTOPROGRESS2     = "ap"
    constant    string          kj_ADDON_CHAT_NO_FOOD           = "nofood"
    constant    string          kj_ADDON_CHAT_NO_FOOD2          = "nf"
    constant    string          kj_ADDON_CHAT_DELETE            = "delete"
    constant    string          kj_ADDON_CHAT_DEL               = "del"
    constant    string          kj_ADDON_CHAT_LUMBER            = "lumber"
    constant    string          kj_ADDON_CHAT_LUMBER2           = "l"
    constant    string          kj_ADDON_CHAT_CHANGE            = "change"
    constant    string          kj_ADDON_CHAT_CHANGE2           = "ch"
    constant    string          kj_ADDON_CHAT_OWNER             = "owner"
    constant    string          kj_ADDON_CHAT_OWN               = "own"
    constant    string          kj_ADDON_CHAT_TREE              = "tree"
    constant    string          kj_ADDON_CHAT_GETUNITTYPE       = "getunittype"
    constant    string          kj_ADDON_CHAT_GETUNITTYPE2      = "gut"
    constant    string          kj_ADDON_CHAT_COLOR             = "color"
    constant    string          kj_ADDON_CHAT_PLAYER_COLOR      = "playercolor"
    constant    string          kj_ADDON_CHAT_PLAYER_COLOR2     = "pc"
    constant    string          kj_ADDON_CHAT_BOUNTY            = "bounty"
    constant    string          kj_ADDON_CHAT_BOUNTY2           = "b"
    constant    string          kj_ADDON_CHAT_USEFOOD           = "usefood"
    constant    string          kj_ADDON_CHAT_UF                = "uf"
    constant    string          kj_ADDON_CHAT_LIFE              = "life"
    constant    string          kj_ADDON_CHAT_HEALTH            = "health"
    constant    string          kj_ADDON_CHAT_H                 = "h"
    constant    string          kj_ADDON_CHAT_MANA              = "mana"
    constant    string          kj_ADDON_CHAT_M                 = "m"
    constant    string          kj_ADDON_CHAT_SPAWN             = "spawn"
    constant    string          kj_ADDON_CHAT_SPAWN2            = "s"
    constant    string          kj_ADDON_CHAT_SPAWN3            = "-s"
    constant    string          kj_ADDON_CHAT_SPAWN_XY          = "spawnxy"
    constant    string          kj_ADDON_CHAT_SPAWN_XY2         = "sxy"
    constant    string          kj_ADDON_CHAT_SPAWN_XY3         = "-sxy"
    constant    string          kj_ADDON_CHAT_UNIT_USER_DATA    = "unituserdata"
    constant    string          kj_ADDON_CHAT_UNIT_USER_DATA2   = "uud"
    constant    string          kj_ADDON_CHAT_ITEM_USER_DATA    = "itemuserdata"
    constant    string          kj_ADDON_CHAT_ITEM_USER_DATA2   = "iud"
    constant    string          kj_ADDON_CHAT_SET_ITEM_CHARGES  = "itemcharges"
    constant    string          kj_ADDON_CHAT_SET_ITEM_CHARGES2 = "ic"
    constant    string          kj_ADDON_CHAT_CLEAR             = "--"
    constant    string          kj_ADDON_CHAT_VULNERABLE        = "vulnerable"
    constant    string          kj_ADDON_CHAT_VULNERABLE2       = "vul"
    constant    string          kj_ADDON_CHAT_INVULNERABLE      = "invulnerable"
    constant    string          kj_ADDON_CHAT_INVULNERABLE2     = "inv"
    constant    string          kj_ADDON_CHAT_PLAYER_NAME       = "playername"
    constant    string          kj_ADDON_CHAT_PLAYER_NAME2      = "pn"
    constant    string          kj_ADDON_CHAT_PN_COLORED        = "playernamecolored"
    constant    string          kj_ADDON_CHAT_PN_COLORED2       = "pnc"
    constant    string          kj_ADDON_CHAT_HERO_LEVEL        = "herolevel"
    constant    string          kj_ADDON_CHAT_HERO_LEVEL2       = "hl"
    constant    string          kj_ADDON_CHAT_HERO_STAT         = "herostat"
    constant    string          kj_ADDON_CHAT_HERO_STAT2        = "hs"
    constant    string          kj_ADDON_CHAT_HERO_AGI          = "agi"
    constant    string          kj_ADDON_CHAT_HERO_INT          = "int"
    constant    string          kj_ADDON_CHAT_HERO_STR          = "str"
    
    constant    string          kj_ADDON_CHAT_PROGRESS          = "progress"
    constant    string          kj_ADDON_CHAT_UPGRADE           = "upgrade"
    
    
    constant    string          kj_ADDON_CHAT_REMOVE_BROKEN_ITEMS   = "-removebrokenitems"
    // [Blizzard J] version 2b
    constant    string          kj_ADDON_CHAT_EXRTA             = "extra"
    constant    string          kj_ADDON_CHAT_EXTRA_SHORTCUT    = "x"
    
    constant    string          kj_ADDON_CHAT_X_PID             = "pid"
    constant    string          kj_ADDON_CHAT_X_PLAYER_INDEX    = "playerindex"
    constant    string          kj_ADDON_CHAT_X_AREA_DAMAGE     = "daoe"
    constant    string          kj_ADDON_CHAT_X_RESURRECT_TREES = "resurrecttrees"
    constant    string          kj_ADDON_CHAT_X_RT              = "rt"
    constant    string          kj_ADDON_CHAT_X_VERTEX          = "vertex"
    constant    string          kj_ADDON_CHAT_X_VEX             = "vex"
    constant    string          kj_ADDON_CHAT_X_IDC             = "id2clr"
    constant    string          kj_ADDON_CHAT_X_CID             = "clr2id"
    constant    string          kj_ADDON_CHAT_X_ABILITY_AV      = "abilityavailability"
    constant    string          kj_ADDON_CHAT_X_AA              = "aa"
    
	constant    string          kj_ADDON_CHAT_X_GW              = "gateway"
	constant    string          kj_ADDON_CHAT_X_GW2             = "gw"
	constant 	string 			kj_ADDON_CHAT_X_SKP				= "skillpoint"
	constant 	string 			kj_ADDON_CHAT_X_SKP2			= "sp"
	constant 	string 			kj_ADDON_CHAT_X_HANDICAP		= "handicap"
	constant 	string 			kj_ADDON_CHAT_X_HANDICAP2		= "hd"
	constant 	string 			kj_ADDON_CHAT_X_PLAYERSTATE		= "platerstate"
	constant 	string 			kj_ADDON_CHAT_X_PLAYERSTATE2	= "ps"
	constant 	string 			kj_ADDON_CHAT_X_MAX_FOOD 		= "maxfood"
	constant 	string 			kj_ADDON_CHAT_X_MAX_FOOD2 		= "mf"
	constant 	string 			kj_ADDON_CHAT_X_FOOD_LIMIT 		= "foodlimit"
	constant 	string 			kj_ADDON_CHAT_X_FOOD_LIMIT2		= "fl"
	
	
	// <\ KJ ADDON CONSTANTS [CHACT COMMANDS?] PATCH >~ 1.31?
    constant    string          kj_ADDON_CHAT_X_ATTACK          = "attack"
  //constant    string          kj_ADDON_CHAT_X_SIDE            = "side"
  //constant    string          kj_ADDON_CHAT_X_DICE            = "dice"
	constant    string          kj_ADDON_CHAT_X_MAX_LIFE        = "maxlife"
	constant    string          kj_ADDON_CHAT_X_MAX_MANA        = "maxmana"
	constant    string          kj_ADDON_CHAT_X_RATIO        	= "ratio"
	constant    string          kj_ADDON_CHAT_X_ARMOR        	= "armor"
    constant    string          kj_ADDON_CHAT_X_MANA_REGEN      = "manaregen"
	constant    string          kj_ADDON_CHAT_X_LIFE_REGEN      = "liferegen"
	constant    string          kj_ADDON_CHAT_X_BLOCK_ABILITY   = "blockability"  // 1.32
	constant    string          kj_ADDON_CHAT_X_BLOCK_ABILITY2  = "bab"           // 1.32
	constant    string          kj_ADDON_CHAT_X_HIDE_ABILITY    = "hideability"   // 1.32
	constant    string          kj_ADDON_CHAT_X_HIDE_ABILITY2   = "hab"           // 1.32
	constant    string          kj_ADDON_CHAT_X_DERESEARCH      = "deresearch"
	constant    string          kj_ADDON_CHAT_X_DERESEARCH2     = "drs"
	constant    string          kj_ADDON_CHAT_X_NAME      		= "name"
	constant    string          kj_ADDON_CHAT_X_TITLE      		= "title"
    // KJ ADDON CONSTANTS [CHACT COMMANDS?] PATCH >~ 1.31? />
	
    // KJ ADDON TRIGGERS  [NO HUMGER & CHAT CMDs]
                trigger         kj_ADDON_TRIGGER_CHATCOMMANDS   	= null
				trigger         kj_ADDON_TRIGGER_CHATCOMMANDS_PLUS  = null
                trigger         kj_ADDON_TRIGGER_UNITNOHUNGER   	= null
                trigger         kj_ADDON_TRIGGER_UNITNOHUNGER2  	= null
    // KJ ADDON TRIGGERS + TWEAKS [NO HUMGER & AUTOPROGRESS BUILDING MODE SISES CHAT CMDs]
                trigger         kj_AUTO_PROGRESSING             = null
                boolean array   kj_NO_FOOD_USED
                boolean array   kj_AUTO_PROGRESS
                integer array   kj_AUTO_PROGRESS_STEP
    constant    integer         kj_AUTO_PROGRESS_MAX_STEP       = 99
    constant    integer         kj_AUTO_PROGRESS_MIN_STEP       = 0
    // KJ ADDON TRIGGERS + TWEAKS [SELECTED, CHAT CMDs]
                trigger         kj_SELECTOR                     = null
                unit    array   kj_SELECTED                     
                string  array   kj_Commands
                integer array   kj_BufferSize
    constant    integer         kj_BufferCommands               = 128
                trigger         kj_ADDON_TRIGGER_SELECTOR       = null
    // KJ ADDON GENERAL TWEAKS [ Hash, CharZone for RAV-code & etc.]
                hashtable       kj_Table                        = null
                string array    kj_chars
                integer array   kj_charIndex
                integer array   Pow256KJ
                boolean         kj_LastErrorYes                 = false
                string          kj_LastRaw                      = null
    // REFUNDED! BLIZZARD FUCK OFF OUR MAPS!
	
	// const fake blz japi *** FAKE CONSTANTS FOR PATCH 1.26 - 1.29??
	constant	integer 		UNIT_RF_MANA_REGENERATION					= 128
	constant	integer 		UNIT_RF_HIT_POINTS_REGENERATION_RATE		= 256
	
	constant playercolor        PLAYER_COLOR_MAROON             = PLAYER_COLOR_RED
    constant playercolor        PLAYER_COLOR_NAVY               = PLAYER_COLOR_BLUE
    constant playercolor        PLAYER_COLOR_TURQUOISE          = PLAYER_COLOR_CYAN
    constant playercolor        PLAYER_COLOR_VIOLET             = PLAYER_COLOR_PURPLE
    constant playercolor        PLAYER_COLOR_WHEAT              = PLAYER_COLOR_YELLOW
    constant playercolor        PLAYER_COLOR_PEACH              = PLAYER_COLOR_ORANGE
    constant playercolor        PLAYER_COLOR_MINT               = PLAYER_COLOR_GREEN
    constant playercolor        PLAYER_COLOR_LAVENDER           = PLAYER_COLOR_PINK
    constant playercolor        PLAYER_COLOR_COAL               = PLAYER_COLOR_LIGHT_GRAY
    constant playercolor        PLAYER_COLOR_SNOW               = PLAYER_COLOR_LIGHT_BLUE
    constant playercolor        PLAYER_COLOR_EMERALD            = PLAYER_COLOR_AQUA
    constant playercolor        PLAYER_COLOR_PEANUT             = PLAYER_COLOR_BROWN
endglobals

// empty functions fake blz functions japi *** FAKE FUNCTIONS FOR PATCH 1.26 - 1.29?? 
function BlzSetUnitBaseDamage takes unit whichUnit, integer baseDamage, integer weaponIndex returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzSetUnitName takes unit whichUnit, string name returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzSetHeroProperName takes unit whichUnit, string heroProperName returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzGetUnitBaseDamage takes unit whichUnit, integer weaponIndex returns integer
return 0
endfunction
function BlzDecPlayerTechResearched takes player whichPlayer, integer techid, integer levels returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzGetUnitAttackCooldown takes unit whichUnit, integer weaponIndex returns real
return 0.
endfunction
function BlzSetUnitAttackCooldown takes unit whichUnit, real cooldown, integer weaponIndex returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzGetUnitMaxHP takes unit whichUnit returns integer
return 0
endfunction
function BlzSetUnitMaxHP takes unit whichUnit, integer hp returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzGetUnitMaxMana takes unit whichUnit returns integer
return 0
endfunction
function BlzSetUnitMaxMana takes unit whichUnit, integer mana returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzGetUnitArmor takes unit whichUnit returns real
return 0.
endfunction
function BlzSetUnitArmor takes unit whichUnit, real armorAmount returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
endfunction
function BlzSetUnitRealField takes unit whichUnit, integer whichField, real value returns boolean
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.29!")
	return false
endfunction
function BlzGetUnitRealField takes unit whichUnit, integer whichField returns real
return 0.
endfunction
function BlzUnitHideAbility takes unit whichUnit, integer abilId, boolean flag returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.31!") // 1.32
endfunction
function BlzUnitDisableAbility takes unit whichUnit, integer abilId, boolean flag, boolean hideUI returns nothing
	call BJDebugMsg("|cff8888ffKJ INFO:|r This chat command does not work in the Patch 1.26 - 1.31!") // 1.32
endfunction
// end empty functions

// NoSeryFunc
// SFX / SFY / 255

function kj255 takes integer i returns integer
    if i > 255 then
        return 255
    elseif i < 0 then
        return 0
    endif
    return i
endfunction

function kjSFX takes real x returns real
    if x > GetRectMaxX(bj_mapInitialPlayableArea) then
        return GetRectMaxX(bj_mapInitialPlayableArea) 
    elseif x < GetRectMinX(bj_mapInitialPlayableArea) then
        return GetRectMinX(bj_mapInitialPlayableArea) 
    endif
    return x
endfunction

function kjSFY takes real y returns real
    if y > GetRectMaxY(bj_mapInitialPlayableArea) then
        return GetRectMaxY(bj_mapInitialPlayableArea) 
    elseif y < GetRectMinY(bj_mapInitialPlayableArea) then
        return GetRectMinY(bj_mapInitialPlayableArea) 
    endif
    return y
endfunction

// END KJ SFX/Y

function LastErrorClearKJ takes nothing returns nothing
    set kj_LastErrorYes = false
endfunction

// ClearChat 
function ClearChatForPlayerKJ takes player whichPlayer returns nothing
    if GetLocalPlayer() == whichPlayer then
        call ClearTextMessages()
    endif
endfunction

// Raw to Inv

function SeekOfRawKJ takes integer id returns string
    local integer i = 0
    loop
    exitwhen i == 91
        if id == kj_charIndex[i] then
            return kj_chars[i]
            exitwhen true // SAFE RETUN-EXIT
        endif
        set i = i + 1
    endloop
    return "."
endfunction

/// RAW to Int

function Raw2IntKJ takes string s returns integer
    local string sc = ""
    local integer i = 0
    local integer id =0
    local integer si =4
    if StringLength(s) == 4 then
        loop
            set si = si - 1
            set sc = SubString( s, si, si+1 )
            set i = 0
            loop
            exitwhen i == 91
                if sc == kj_chars[i] then
                    set id = id + kj_charIndex[i] * Pow256KJ[3-si]
                endif
                set i = i + 1
            endloop
        exitwhen si == 0
        endloop
    endif
    set sc = null
    return id
endfunction 

// Integer to RawCode ok.

function GetRawOfIntKJ takes integer Alpha returns string
    local integer Gamma = Alpha // ModuloInteger
    local integer Beta  = 0
    
    set kj_LastRaw = null
    
    loop
    exitwhen Gamma == 0
        set Beta = ModuloInteger( Gamma, 256 )
        if kj_LastRaw == null then
            set kj_LastRaw = SeekOfRawKJ(Beta)
        else
            set kj_LastRaw = SeekOfRawKJ(Beta) + kj_LastRaw
        endif
        set Gamma = Gamma / 256
    endloop
    return kj_LastRaw
endfunction

// Doc's hating of the Hate. Azazazazz Gen Variations
function GetTreeMaxVariations takes integer treeType returns integer
    if treeType == 'ATtr' or treeType == 'CTtr' then
        return 5
    elseif treeType == 'ATtc' or treeType == 'BTtc' or treeType == 'CTtc' or treeType == 'ITtc' or treeType == 'NTtc'  then
        return 3
    elseif treeType == 'BTtw' or treeType == 'KTtw' or treeType == 'JTtw' or treeType == 'ITtw' or treeType == 'NTtw' or treeType == 'OTtw' then
        return 10
    elseif treeType == 'YTct' or treeType == 'YTst' or treeType == 'YTft' or treeType == 'YTwt'  or treeType == 'JTct' then
        return 2
    elseif treeType == 'DTsh' or treeType == 'GTsh' then
        return 8
    elseif treeType == 'WTtw' or treeType == 'WTst' or treeType == 'LTlt' or treeType == 'FTtw' or treeType == 'VTlt' or treeType == 'ZTtw' then
        return 10
    endif
    return 2
endfunction

// KJ Fuck is Get TRee?
function GetTreeeTypeByNameKJ takes string nameTree returns integer
    if nameTree == "ashenvale" then
        return 'ATtr'
    elseif nameTree == "ashenvale canopy" then
        return 'ATtc'
    elseif nameTree == "barrens" then
        return 'BTtw'
    elseif nameTree == "barrens canopy" then
        return 'BTtc'
    elseif nameTree == "blackcitadel" then
        return 'KTtw'
    elseif nameTree == "cityscape summer" then
        return 'YTct'
    elseif nameTree == "cityscape winter" then
        return 'YTwt'
    elseif nameTree == "cityscape autumn" then
        return 'YTft'
    elseif nameTree == "cityscape ruined" then
        return 'JTct'
    elseif nameTree == "cityscape snow" then
        return 'YTst'
    elseif nameTree == "demolished" then
        return 'JTtw'
    elseif nameTree == "dungeon" then
        return 'DTsh'
    elseif nameTree == "felwood" then
        return 'CTtr'
    elseif nameTree == "felwood canopy" then
        return 'CTtc'
    elseif nameTree == "icecrown" then
        return 'ITtw'
    elseif nameTree == "icecrown canopy" then
        return 'ITtc'
    elseif nameTree == "lordaeron summer" then
        return 'LTlt'
    elseif nameTree == "lordaeron winter" then
        return 'WTtw'
    elseif nameTree == "lordaeron snow" or nameTree == "northrend snow" then
        return 'WTst'
    elseif nameTree == "lordaeron autumn" or nameTree == "village autumn" then
        return 'FTtw'
    elseif nameTree == "northrend" then
        return 'NTtw'
    elseif nameTree == "northrend canopy" then
        return 'NTtc'
    elseif nameTree == "outland" then
        return 'OTtw'
    elseif nameTree == "sunken ruins" then
        return 'ZTtw'
    elseif nameTree == "sunken ruins canopy" then
        return 'ZTtc'
    elseif nameTree == "underground" then
        return 'GTsh'
    elseif nameTree == "village" then
        return 'VTlt'
    endif
    return 'LTlt'
endfunction

// Heal are trees or others, right?
function KeepTheTreesKJ takes nothing returns nothing
    call DestructableRestoreLife( GetEnumDestructable(), GetDestructableMaxLife(GetEnumDestructable()), false )
endfunction

function ResurrectTreesKJ takes real radius, real x, real y returns nothing
    local rect whichRect = Rect( kjSFX(x-radius), kjSFY(y-radius), kjSFX(x+radius), kjSFY(y+radius) )
    call EnumDestructablesInRect( whichRect, null, function KeepTheTreesKJ )
    call RemoveRect( whichRect )
    set whichRect = null
endfunction

function rtEntireKJ takes nothing returns nothing
    local rect whichRect = GetWorldBounds()
    call EnumDestructablesInRect( whichRect, null, function KeepTheTreesKJ )
    call RemoveRect( whichRect )
    set whichRect = null
endfunction

function InitCharsKJ takes nothing returns nothing
    set kj_chars[0] = "!"
    set kj_charIndex[0] = 33
    set kj_chars[1] = "#"
    set kj_charIndex[1] = 35
    set kj_chars[2] = "$"
    set kj_charIndex[2] = 36
    set kj_chars[3] = "%"
    set kj_charIndex[3] = 37
    set kj_chars[4] = "&"
    set kj_charIndex[4] = 38
    set kj_chars[5] = "'"
    set kj_charIndex[5] = 39
    set kj_chars[6] = "("
    set kj_charIndex[6] = 40
    set kj_chars[7] = ")"
    set kj_charIndex[7] = 41
    set kj_chars[8] = "*"
    set kj_charIndex[8] = 42
    set kj_chars[9] = "+"
    set kj_charIndex[9] = 43
    set kj_chars[10] = ","
    set kj_charIndex[10] = 44
    set kj_chars[11] = "-"
    set kj_charIndex[11] = 45
    set kj_chars[12] = "."
    set kj_charIndex[12] = 46
    set kj_chars[13] = "/"
    set kj_charIndex[13] = 47
    set kj_chars[14] = "0"
    set kj_charIndex[14] = 48
    set kj_chars[15] = "1"
    set kj_charIndex[15] = 49
    set kj_chars[16] = "2"
    set kj_charIndex[16] = 50
    set kj_chars[17] = "3"
    set kj_charIndex[17] = 51
    set kj_chars[18] = "4"
    set kj_charIndex[18] = 52
    set kj_chars[19] = "5"
    set kj_charIndex[19] = 53
    set kj_chars[20] = "6"
    set kj_charIndex[20] = 54
    set kj_chars[21] = "7"
    set kj_charIndex[21] = 55
    set kj_chars[22] = "8"
    set kj_charIndex[22] = 56
    set kj_chars[23] = "9"
    set kj_charIndex[23] = 57
    set kj_chars[24] = ":"
    set kj_charIndex[24] = 58
    set kj_chars[25] = ";"
    set kj_charIndex[25] = 59
    set kj_chars[26] = "<"
    set kj_charIndex[26] = 60
    set kj_chars[27] = "="
    set kj_charIndex[27] = 61
    set kj_chars[28] = ">"
    set kj_charIndex[28] = 62
    set kj_chars[29] = "@"
    set kj_charIndex[29] = 64
    set kj_chars[30] = "A"
    set kj_charIndex[30] = 65
    set kj_chars[31] = "B"
    set kj_charIndex[31] = 66
    set kj_chars[32] = "C"
    set kj_charIndex[32] = 67
    set kj_chars[33] = "D"
    set kj_charIndex[33] = 68
    set kj_chars[34] = "E"
    set kj_charIndex[34] = 69
    set kj_chars[35] = "F"
    set kj_charIndex[35] = 70
    set kj_chars[36] = "G"
    set kj_charIndex[36] = 71
    set kj_chars[37] = "H"
    set kj_charIndex[37] = 72
    set kj_chars[38] = "I"
    set kj_charIndex[38] = 73
    set kj_chars[39] = "J"
    set kj_charIndex[39] = 74
    set kj_chars[40] = "K"
    set kj_charIndex[40] = 75
    set kj_chars[41] = "L"
    set kj_charIndex[41] = 76
    set kj_chars[42] = "M"
    set kj_charIndex[42] = 77
    set kj_chars[43] = "N"
    set kj_charIndex[43] = 78
    set kj_chars[44] = "O"
    set kj_charIndex[44] = 79
    set kj_chars[45] = "P"
    set kj_charIndex[45] = 80
    set kj_chars[46] = "Q"
    set kj_charIndex[46] = 81
    set kj_chars[47] = "R"
    set kj_charIndex[47] = 82
    set kj_chars[48] = "S"
    set kj_charIndex[48] = 83
    set kj_chars[49] = "T"
    set kj_charIndex[49] = 84
    set kj_chars[50] = "U"
    set kj_charIndex[50] = 85
    set kj_chars[51] = "V"
    set kj_charIndex[51] = 86
    set kj_chars[52] = "W"
    set kj_charIndex[52] = 87
    set kj_chars[53] = "X"
    set kj_charIndex[53] = 88
    set kj_chars[54] = "Y"
    set kj_charIndex[54] = 89
    set kj_chars[55] = "Z"
    set kj_charIndex[55] = 90
    set kj_chars[56] = "["
    set kj_charIndex[56] = 91
    set kj_chars[57] = "]"
    set kj_charIndex[57] = 93
    set kj_chars[58] = "^"
    set kj_charIndex[58] = 94
    set kj_chars[59] = "_"
    set kj_charIndex[59] = 95
    set kj_chars[60] = "`"
    set kj_charIndex[60] = 96
    set kj_chars[61] = "a"
    set kj_charIndex[61] = 97
    set kj_chars[62] = "b"
    set kj_charIndex[62] = 98
    set kj_chars[63] = "c"
    set kj_charIndex[63] = 99
    set kj_chars[64] = "d"
    set kj_charIndex[64] = 100
    set kj_chars[65] = "e"
    set kj_charIndex[65] = 101
    set kj_chars[66] = "f"
    set kj_charIndex[66] = 102
    set kj_chars[67] = "g"
    set kj_charIndex[67] = 103
    set kj_chars[68] = "h"
    set kj_charIndex[68] = 104
    set kj_chars[69] = "i"
    set kj_charIndex[69] = 105
    set kj_chars[70] = "j"
    set kj_charIndex[70] = 106
    set kj_chars[71] = "k"
    set kj_charIndex[71] = 107
    set kj_chars[72] = "l"
    set kj_charIndex[72] = 108
    set kj_chars[73] = "m"
    set kj_charIndex[73] = 109
    set kj_chars[74] = "n"
    set kj_charIndex[74] = 110
    set kj_chars[75] = "o"
    set kj_charIndex[75] = 111
    set kj_chars[76] = "p"
    set kj_charIndex[76] = 112
    set kj_chars[77] = "q"
    set kj_charIndex[77] = 113
    set kj_chars[78] = "r"
    set kj_charIndex[78] = 114
    set kj_chars[79] = "s"
    set kj_charIndex[79] = 115
    set kj_chars[80] = "t"
    set kj_charIndex[80] = 116
    set kj_chars[81] = "u"
    set kj_charIndex[81] = 117
    set kj_chars[82] = "v"
    set kj_charIndex[82] = 118
    set kj_chars[83] = "w"
    set kj_charIndex[83] = 119
    set kj_chars[84] = "x"
    set kj_charIndex[84] = 120
    set kj_chars[85] = "y"
    set kj_charIndex[85] = 121
    set kj_chars[86] = "z"
    set kj_charIndex[86] = 122
    set kj_chars[87] = "{"
    set kj_charIndex[87] = 123
    set kj_chars[88] = "|"
    set kj_charIndex[88] = 124
    set kj_chars[89] = "}"
    set kj_charIndex[89] = 125
    set kj_chars[90] = "~"
    set kj_charIndex[90] = 126
    
    set Pow256KJ[0] = 1
    set Pow256KJ[1] = 256
    set Pow256KJ[2] = 65536
    set Pow256KJ[3] = 16777216
endfunction

function SetAllTechLevelKJ takes player okKO, race whatRace returns nothing
    if whatRace == RACE_HUMAN then
        call SetPlayerTechResearched( okKO, 'Rhme', 3 )
        call SetPlayerTechResearched( okKO, 'Rhar', 3 )
        call SetPlayerTechResearched( okKO, 'Rhra', 3 )
        call SetPlayerTechResearched( okKO, 'Rhla', 3 )
        call SetPlayerTechResearched( okKO, 'Rhac', 3 )
        
        call SetPlayerTechResearched( okKO, 'Rhlh', 2 )
        call SetPlayerTechResearched( okKO, 'Rhpt', 2 )
        call SetPlayerTechResearched( okKO, 'Rhst', 2 )
        
        
        call SetPlayerTechResearched( okKO, 'Rhde', 1 )
        call SetPlayerTechResearched( okKO, 'Rhri', 1 )
        call SetPlayerTechResearched( okKO, 'Rhss', 1 )
        call SetPlayerTechResearched( okKO, 'Rhfs', 1 )
        call SetPlayerTechResearched( okKO, 'Rhfl', 1 )
        call SetPlayerTechResearched( okKO, 'Rhse', 1 )
        call SetPlayerTechResearched( okKO, 'Rhpm', 1 )
        call SetPlayerTechResearched( okKO, 'Rhcd', 1 )
        call SetPlayerTechResearched( okKO, 'Rhfc', 1 )
        call SetPlayerTechResearched( okKO, 'Rhan', 1 )
        call SetPlayerTechResearched( okKO, 'Rhgb', 1 )
        call SetPlayerTechResearched( okKO, 'Rhhb', 1 )
        call SetPlayerTechResearched( okKO, 'Rhrt', 1 )
    elseif whatRace == RACE_ORC then
        call SetPlayerTechResearched( okKO, 'Rora', 3 )
        call SetPlayerTechResearched( okKO, 'Rome', 3 )
        call SetPlayerTechResearched( okKO, 'Roar', 3 )
        call SetPlayerTechResearched( okKO, 'Rosp', 3 )
        
        call SetPlayerTechResearched( okKO, 'Rost', 2 )
        call SetPlayerTechResearched( okKO, 'Rowt', 2 )
        call SetPlayerTechResearched( okKO, 'Rowd', 2 )
        
        call SetPlayerTechResearched( okKO, 'Robk', 1 )
        call SetPlayerTechResearched( okKO, 'Robf', 1 )
        call SetPlayerTechResearched( okKO, 'Ropg', 1 )
        call SetPlayerTechResearched( okKO, 'Roen', 1 )
        call SetPlayerTechResearched( okKO, 'Rolf', 1 )
        call SetPlayerTechResearched( okKO, 'Rwdm', 1 )
        call SetPlayerTechResearched( okKO, 'Ropm', 1 )
        call SetPlayerTechResearched( okKO, 'Rotr', 1 )
        call SetPlayerTechResearched( okKO, 'Rows', 1 )
        call SetPlayerTechResearched( okKO, 'Rorb', 1 )
        call SetPlayerTechResearched( okKO, 'Robs', 1 )
        call SetPlayerTechResearched( okKO, 'Rovs', 1 )
        
    elseif whatRace == RACE_UNDEAD then
        call SetPlayerTechResearched( okKO, 'Rume', 3 )
        call SetPlayerTechResearched( okKO, 'Ruar', 3 )
        call SetPlayerTechResearched( okKO, 'Rura', 3 )
        call SetPlayerTechResearched( okKO, 'Rucr', 3 )
        
        call SetPlayerTechResearched( okKO, 'Ruba', 2 )
        call SetPlayerTechResearched( okKO, 'Rune', 2 )
        
        call SetPlayerTechResearched( okKO, 'Rusl', 1 )
        call SetPlayerTechResearched( okKO, 'Ruac', 1 )
        call SetPlayerTechResearched( okKO, 'Rufb', 1 )
        call SetPlayerTechResearched( okKO, 'Rusm', 1 )
        call SetPlayerTechResearched( okKO, 'Ruwb', 1 )
        call SetPlayerTechResearched( okKO, 'Rupm', 1 )
        call SetPlayerTechResearched( okKO, 'Rugf', 1 )
        call SetPlayerTechResearched( okKO, 'Rupc', 1 )
        call SetPlayerTechResearched( okKO, 'Rusp', 1 )
        call SetPlayerTechResearched( okKO, 'Rusf', 1 )
        call SetPlayerTechResearched( okKO, 'Rubu', 1 )
        call SetPlayerTechResearched( okKO, 'Ruex', 1 )
    elseif whatRace == RACE_NIGHTELF then
        call SetPlayerTechResearched( okKO, 'Resm', 3 )
        call SetPlayerTechResearched( okKO, 'Rema', 3 )
        call SetPlayerTechResearched( okKO, 'Resw', 3 )
        call SetPlayerTechResearched( okKO, 'Rerh', 3 )
        
        call SetPlayerTechResearched( okKO, 'Redc', 2 )
        call SetPlayerTechResearched( okKO, 'Redt', 2 )
        
        call SetPlayerTechResearched( okKO, 'Repb', 1 )
        call SetPlayerTechResearched( okKO, 'Resc', 1 )
        call SetPlayerTechResearched( okKO, 'Remk', 1 )
        call SetPlayerTechResearched( okKO, 'Repm', 1 )
        call SetPlayerTechResearched( okKO, 'Resi', 1 )
        call SetPlayerTechResearched( okKO, 'Reuv', 1 )
        call SetPlayerTechResearched( okKO, 'Reeb', 1 )
        call SetPlayerTechResearched( okKO, 'Remg', 1 )
        call SetPlayerTechResearched( okKO, 'Rews', 1 )
        call SetPlayerTechResearched( okKO, 'Rehs', 1 )
        call SetPlayerTechResearched( okKO, 'Rers', 1 )
        call SetPlayerTechResearched( okKO, 'Recb', 1 )
        call SetPlayerTechResearched( okKO, 'Renb', 1 )
        call SetPlayerTechResearched( okKO, 'Reib', 1 )
        call SetPlayerTechResearched( okKO, 'Reec', 1 )
        call SetPlayerTechResearched( okKO, 'Reht', 1 )
        
    elseif whatRace == RACE_DEMON then
        call SetPlayerTechResearched( okKO, 'Rnat', 3 )
        call SetPlayerTechResearched( okKO, 'Rnam', 3 )
        
        call SetPlayerTechResearched( okKO, 'Rnsw', 2 )
        
        call SetPlayerTechResearched( okKO, 'Rnsi', 1 )
        call SetPlayerTechResearched( okKO, 'Rnsb', 1 )
        call SetPlayerTechResearched( okKO, 'Rnen', 1 )
    elseif whatRace == RACE_OTHER then
        call SetPlayerTechResearched( okKO, 'Rgfo', 3 )
        call SetPlayerTechResearched( okKO, 'Rguv', 2 )
        call SetPlayerTechResearched( okKO, 'Roch', 1 )
    endif

endfunction

function Name2RaceKJ takes string strName returns race
    if strName == "human" or strName == "h" or strName == "HUMAN" or strName == "H" or strName == "alliance" or strName == "a" or strName == "ALLIANCE" or strName == "A" then
        return RACE_HUMAN
    elseif strName == "orc" or strName == "o" or strName == "ORC" or strName == "O" or strName == "horde" or strName == "HORDE" then
        return RACE_ORC
    elseif strName == "undead" or strName == "UNDEAD" or strName == "u" or strName == "U" or strName == "scourge" or strName == "SCOURGE" or strName == "s" or strName == "S" then
        return RACE_UNDEAD
    elseif strName == "nightelf" or strName == "ne" or strName == "night elf" or strName == "NIGHTELF" or strName == "NE" or strName == "NIGHT ELF" then
        return RACE_NIGHTELF
    elseif strName == "naga" or strName == "NAGA" or strName == "n" or strName == "N" then
        return RACE_DEMON
    endif
    return RACE_OTHER
endfunction

function UnitLifeKJ takes unit whichUnit, real theLife returns nothing
    local real fixFloat  = GetWidgetLife(whichUnit)
    if fixFloat < (theLife * -1.00) then 
        call SetWidgetLife( whichUnit, 0. )
    else
        call SetWidgetLife( whichUnit, theLife )
    endif
endfunction

function UnitManaKJ takes unit whichUnit, real theMana returns  nothing 
    local real fixFloat  = GetUnitState( whichUnit, UNIT_STATE_MANA )
    local real fixPrice  = GetUnitState( whichUnit, UNIT_STATE_MAX_MANA )
    
    if fixPrice >= 0.0 then
        if fixFloat < (theMana * -1.00) then 
            call SetUnitState( whichUnit, UNIT_STATE_MANA, 0. )
        else
            call SetUnitState( whichUnit, UNIT_STATE_MANA, theMana )
        endif
    endif
endfunction

function AdjustEffectXYKJ takes string eFile, real x, real y, string name returns nothing
	local effect e = AddSpecialEffect( eFile, x, y )
		if e == null then
			call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create an effect at specified position." )
		else
			call SaveEffectHandle( kj_Table, StringHash("Effects"), StringHash(name), e )
		endif
	set e = null
endfunction

function kjAFAULost takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local integer id = GetHandleId(t)
	local unit u = LoadUnitHandle( kj_Table, id, 0 )
	if GetWidgetLife(u) <= .405 or IsUnitType( u, UNIT_TYPE_DEAD ) then
		call PauseTimer(t)
		call DestroyEffect(LoadEffectHandle( kj_Table, id, 1))
		call DestroyTimer(t)
		call FlushChildHashtable( kj_Table, id )
	endif
	set t = null
endfunction

function AttachEffectAtUnitKJ takes string name, string eFile, string attachType, boolean deleteAfterDead, integer ChaterId returns nothing
	local effect e = AddSpecialEffectTarget( eFile, kj_SELECTED[ChaterId], attachType )
	local timer t
	local integer id = 0
	if e == null then
		call BJDebugMsg( "|cffff0503KJ ERROR:|r System cannot attach a specified effect at the unit, reason: invalid effect file path or effects file doesn't exist. Otherwise you have specified incorrect chat command parameter of '+attach'." )
	else
		if name != null then
			call SaveEffectHandle( kj_Table, StringHash("Effects"), StringHash(name), e )
		elseif not deleteAfterDead then
			call BJDebugMsg("|cffff0503KJ ERROR:|r System cannot attach a specified effect at the unit, reason: invalid effect file path or effects file doesn't exist. Otherwise you have specified incorrect chat command parameter of '+attach'." )
			call DestroyEffect(e)
		endif
		if deleteAfterDead then
			set t = CreateTimer()
			set id = GetHandleId(t)
			call SaveUnitHandle( kj_Table, id, 0, kj_SELECTED[ChaterId] )
			call SaveEffectHandle( kj_Table, id, 1, e )
			call TimerStart( t, .65, true, function kjAFAULost )
		endif
	endif
	
	set t = null
	set e = null
endfunction

function RemoveEffectByNameKJ takes string name returns nothing
	local effect e = LoadEffectHandle( kj_Table, StringHash("Effects"), StringHash(name) )
		if e == null then
			call BJDebugMsg( "|cfff00303KJ ERROR:|r An effect with specified name doesn't exist." )
		else
			call DestroyEffect(e)
		endif
	set e = null
endfunction

// Command Parser

function ParseCommandsKJ takes string wstr, integer plrIndex returns nothing 
    local integer BufferId      = plrIndex * kj_BufferCommands
    local integer BufferLoc     = 0
    local integer CharId        = 0
    local integer wstrLen       = StringLength( wstr )
    local boolean StringGrip    = false
    local string  ParsedString  = null
    local string  Parser        = ""
    loop
        set Parser = SubString( wstr, CharId, CharId + 1 )
        
        if Parser == kj_ADDON_CHAT_OPEN_STRING then
            set StringGrip = true
        endif
        
        if StringGrip then
            if Parser != kj_ADDON_CHAT_OPEN_STRING and Parser != kj_ADDON_CHAT_CLOSE_STRING then
                if ParsedString == null then
                    set ParsedString = Parser
                else
                    set ParsedString = ParsedString + Parser
                endif
            endif
            
            if Parser == kj_ADDON_CHAT_CLOSE_STRING then
                set StringGrip = false
            endif
        else
            if Parser == kj_ADDON_CHAT_SPACE then
                if ParsedString != null then
                    set kj_Commands[BufferId+BufferLoc] = ParsedString
                    set BufferLoc = BufferLoc + 1
                    set ParsedString = null
                endif
            endif
            
            if Parser != kj_ADDON_CHAT_SPACE then
                if ParsedString == null then
                    set ParsedString = Parser
                else
                    set ParsedString = ParsedString + Parser
                endif
            endif
        endif
        set CharId = CharId + 1
    exitwhen CharId > wstrLen
    endloop
    
    // Catching of the last command
    if ParsedString != null then
        set kj_Commands[BufferId+BufferLoc] = ParsedString
        set BufferLoc = BufferLoc + 1
        set ParsedString = null
    endif
    
    set kj_BufferSize[plrIndex] = BufferLoc
    
    set ParsedString            = null
    set Parser                  = null
    
endfunction

function ItemCleanYeahKJ takes nothing returns nothing
    local item enumItem = GetEnumItem()
    if GetWidgetLife( enumItem ) <= 0.408 then
        call RemoveItem( enumItem )
    endif
    set enumItem = null
endfunction

function RemoveAllBrokenItemsKJ takes nothing returns nothing
    local rect WorldRect = GetWorldBounds()
    call EnumItemsInRect( WorldRect, null, function ItemCleanYeahKJ )
    call RemoveRect( WorldRect )
    set WorldRect = null
endfunction

// Get KJ Player By Color Name
function ColorNameToIntKJ takes string strColor returns integer
    
    if strColor == kj_RED then
        return 0
    elseif strColor == kj_BLUE then 
        return 1
    elseif strColor == kj_CYAN then
        return 2
    elseif strColor == kj_PURPLE then
        return 3
    elseif strColor == kj_YELLOW then
        return 4
    elseif strColor == kj_ORANGE then
        return 5
    elseif strColor == kj_GREEN then
        return 6
    elseif strColor == kj_PINK then
        return 7
    elseif strColor == kj_LIGHT_GRAY then 
        return 8
    elseif strColor == kj_LIGHT_BLUE then
        return 9
    elseif strColor == kj_AQUA then
        return 10
    elseif strColor == kj_BROWN then
        return 11
	elseif strColor == kj_MAROON then 
        return 12
    elseif strColor == kj_NAVY then 
        return 13
    elseif strColor == kj_TURQUOISE then 
        return 14
    elseif strColor == kj_VIOLET then 
        return 15
    elseif strColor == kj_WHEAT then 
        return 16
    elseif strColor == kj_PEACH then 
        return 17
    elseif strColor == kj_MINT then 
        return 18
    elseif strColor == kj_LAVENDER then 
        return 19
    elseif strColor == kj_COAL then 
        return 20
    elseif strColor == kj_SNOW then 
        return 21
    elseif strColor == kj_EMERALD then 
        return 22
    elseif strColor ==kj_PEANUT then 
        return 23	
    elseif strColor == kj_AGGRESSIVE then
        return PLAYER_NEUTRAL_AGGRESSIVE
    elseif strColor == kj_VICTIM then
        return bj_PLAYER_NEUTRAL_VICTIM
    elseif strColor == kj_EXTRA then 
        return bj_PLAYER_NEUTRAL_EXTRA
    elseif strColor == kj_PASSIVE then
        return PLAYER_NEUTRAL_PASSIVE
    endif
    
    return 0
endfunction

function IntToColorNameKJ takes integer intColor returns string
    
    if intColor == 0 then
        return kj_RED
    elseif intColor == 1 then 
        return kj_BLUE
    elseif intColor == 2 then
        return kj_CYAN
    elseif intColor == 3 then
        return kj_PURPLE
    elseif intColor == 4 then
        return kj_YELLOW
    elseif intColor == 5 then
        return kj_ORANGE
    elseif intColor == 6 then
        return kj_GREEN
    elseif intColor == 7 then
        return kj_PINK
    elseif intColor == 8 then 
        return kj_LIGHT_GRAY
    elseif intColor == 9 then
        return kj_LIGHT_BLUE
    elseif intColor == 10 then
        return kj_AQUA
    elseif intColor == 11 then
        return kj_BROWN
	elseif intColor == 12 then
	    return kj_MAROON
	elseif intColor == 13 then
        return kj_NAVY
	elseif intColor == 14 then
        return kj_TURQUOISE
	elseif intColor == 15 then
        return kj_VIOLET
	elseif intColor == 16 then
        return kj_WHEAT
	elseif intColor == 17 then
        return kj_PEACH
	elseif intColor == 18 then
        return kj_MINT
	elseif intColor == 19 then
        return kj_LAVENDER
	elseif intColor == 20 then
        return kj_COAL
	elseif intColor == 21 then
        return kj_SNOW
	elseif intColor == 22 then
        return kj_EMERALD
	elseif intColor == 23 then
        return kj_PEANUT
    elseif intColor == PLAYER_NEUTRAL_AGGRESSIVE then
        return kj_AGGRESSIVE
    elseif intColor == bj_PLAYER_NEUTRAL_VICTIM then
        return kj_VICTIM
    elseif intColor == bj_PLAYER_NEUTRAL_EXTRA then 
        return kj_EXTRA
    elseif intColor == PLAYER_NEUTRAL_PASSIVE then
        return kj_PASSIVE
    endif
    
    return kj_RED
endfunction

// Get KJ Color of Player By Color Name
function ColorNameToColorKJ takes string strColor returns playercolor
    if strColor == kj_RED then
        return PLAYER_COLOR_RED
    elseif strColor == kj_BLUE then 
        return PLAYER_COLOR_BLUE
    elseif strColor == kj_CYAN then
        return PLAYER_COLOR_CYAN
    elseif strColor == kj_PURPLE then
        return PLAYER_COLOR_PURPLE
    elseif strColor == kj_YELLOW then
        return PLAYER_COLOR_YELLOW
    elseif strColor == kj_ORANGE then
        return PLAYER_COLOR_ORANGE
    elseif strColor == kj_GREEN then
        return PLAYER_COLOR_GREEN
    elseif strColor == kj_PINK then
        return PLAYER_COLOR_PINK
    elseif strColor == kj_LIGHT_GRAY then 
        return PLAYER_COLOR_LIGHT_GRAY
    elseif strColor == kj_LIGHT_BLUE then
        return PLAYER_COLOR_LIGHT_BLUE
    elseif strColor == kj_AQUA then
        return PLAYER_COLOR_AQUA
    elseif strColor == kj_BROWN then
        return PLAYER_COLOR_BROWN
	elseif strColor == kj_MAROON then 
        return PLAYER_COLOR_MAROON
    elseif strColor == kj_NAVY then 
        return PLAYER_COLOR_NAVY
    elseif strColor == kj_TURQUOISE then 
        return PLAYER_COLOR_TURQUOISE
    elseif strColor == kj_VIOLET then 
        return PLAYER_COLOR_VIOLET
    elseif strColor == kj_WHEAT then 
        return PLAYER_COLOR_WHEAT
    elseif strColor == kj_PEACH then 
        return PLAYER_COLOR_PEACH
    elseif strColor == kj_MINT then 
        return PLAYER_COLOR_MINT
    elseif strColor == kj_LAVENDER then 
        return PLAYER_COLOR_LAVENDER
    elseif strColor == kj_COAL then 
        return PLAYER_COLOR_COAL
    elseif strColor == kj_SNOW then 
        return PLAYER_COLOR_SNOW
    elseif strColor == kj_EMERALD then 
        return PLAYER_COLOR_EMERALD
    elseif strColor ==kj_PEANUT then 
        return PLAYER_COLOR_PEANUT
    elseif strColor == kj_AGGRESSIVE then
        return kj_PLAYER_COLOR_AGGRESSIVE
    elseif strColor == kj_VICTIM then
        return kj_PLAYER_COLOR_VICTIM
    elseif strColor == kj_EXTRA then 
        return kj_PLAYER_COLOR_EXTRA
    elseif strColor == kj_PASSIVE then
        return kj_PLAYER_COLOR_PASSIVE
    endif
    
    return PLAYER_COLOR_RED
endfunction

function ColoredUnitsKJ takes nothing returns nothing
    local unit eu = GetEnumUnit()
    if not IsUnitType( eu, UNIT_TYPE_DEAD ) then
        call SetUnitColor( eu, kj_lastPlayerColor )
    endif
    set eu = null
endfunction

function SetPlayerColorKJ takes player wPlayer, playercolor wColor returns nothing
    local group g = CreateGroup()
    
    call SetPlayerColor( wPlayer, wColor )
    
    call GroupEnumUnitsOfPlayer( g, wPlayer, null )
    set kj_lastPlayerColor = wColor
    call ForGroup( g, function ColoredUnitsKJ )
    
    call GroupClear(g)
    call DestroyGroup(g)
    set g = null
endfunction


// KJ DEFAULTS SETTINGs
function KJDefaultValues  takes nothing returns nothing
    local integer ptrIndex = 0
    local integer ptrFinal = bj_MAX_PLAYERS
    
    loop
        
        set kj_AUTO_PROGRESS[ptrIndex]      = false
        set kj_AUTO_PROGRESS_STEP[ptrIndex] = kj_AUTO_PROGRESS_MIN_STEP
        set kj_SELECTED[ptrIndex]           = null
        set kj_NO_FOOD_USED[ptrIndex]       = false
        set kj_BufferSize[ptrIndex]         = 0
        
        set ptrIndex = ptrIndex + 1
    exitwhen ptrIndex == ptrFinal
    endloop
    
    set kj_Table = InitHashtable()
    
endfunction

// KJ No Fooder
function NoFooderKJ2 takes nothing returns nothing
    local unit LastSold = GetSoldUnit()
    local integer PlayerId = GetPlayerId( GetOwningPlayer( LastSold ) )
    if kj_NO_FOOD_USED[PlayerId] then
        call SetUnitUseFood( LastSold, false )
    endif
    set LastSold = null
endfunction

function NoFooderKJ takes nothing returns nothing
    local unit LastTrained = GetTrainedUnit()
    local integer PlayerId = GetPlayerId( GetOwningPlayer( LastTrained ) )
    if kj_NO_FOOD_USED[PlayerId] then
        call SetUnitUseFood( LastTrained, false )
    endif
    set LastTrained = null
endfunction

function InitNoFooderKJ takes nothing returns nothing
    local   integer ptrIndex        = 0
    local   integer ptrFinal        = bj_MAX_PLAYERS
    
    set     kj_ADDON_TRIGGER_UNITNOHUNGER     = CreateTrigger( )
    set     kj_ADDON_TRIGGER_UNITNOHUNGER2     = CreateTrigger( )
    
    call    TriggerAddAction( kj_ADDON_TRIGGER_UNITNOHUNGER, function NoFooderKJ )
    call    TriggerAddAction( kj_ADDON_TRIGGER_UNITNOHUNGER2, function NoFooderKJ2 )
    
    loop
        call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER, Player( ptrIndex ), EVENT_PLAYER_UNIT_TRAIN_FINISH, null )
        call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER2, Player( ptrIndex ), EVENT_PLAYER_UNIT_SELL, null )
        set ptrIndex = ptrIndex + 1
    exitwhen ptrIndex == ptrFinal
    endloop
    
    call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER2, Player( PLAYER_NEUTRAL_PASSIVE ), EVENT_PLAYER_UNIT_SELL, null )
    call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER2, Player( PLAYER_NEUTRAL_AGGRESSIVE ), EVENT_PLAYER_UNIT_SELL, null )
    call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER2, Player( bj_PLAYER_NEUTRAL_VICTIM ), EVENT_PLAYER_UNIT_SELL, null )
    call TriggerRegisterPlayerUnitEvent( kj_ADDON_TRIGGER_UNITNOHUNGER2, Player( bj_PLAYER_NEUTRAL_EXTRA ), EVENT_PLAYER_UNIT_SELL, null )
endfunction

// KJ Auto-Progressor 
function ToProgressKJ takes nothing returns nothing
    local timer     t   = GetExpiredTimer()
    local integer   hdl = GetHandleId(t)
    
    call PauseTimer(t)
    call DestroyTimer(t)
    call UnitSetConstructionProgress( LoadUnitHandle( kj_Table, hdl, 0 ), LoadInteger( kj_Table, hdl, 1 ) )
    
    call FlushChildHashtable( kj_Table, hdl )
    
    set t = null
endfunction

function UnitSetConstructionProgressTimedKJ takes unit wStructure, integer wProgress, real timeOut returns nothing
    local timer     t   = CreateTimer()
    local integer   hdl = GetHandleId(t)
    call SaveUnitHandle ( kj_Table, hdl, 0, wStructure )
    call SaveInteger    ( kj_Table, hdl, 1, wProgress )
    call TimerStart( t, timeOut, false, function ToProgressKJ )
    
    set t = null
endfunction

function AutoProgressorKJ takes nothing returns nothing

    local unit      CurrentStructure        = GetTriggerUnit    (  )
    local player    Owner                   = GetOwningPlayer   ( CurrentStructure )
    local integer   PlayerId                = GetPlayerId       ( Owner )
    local boolean   IsUpgrade               = GetConstructingStructure() == null
    
    if CurrentStructure == null then
            return
    endif
    
    if kj_AUTO_PROGRESS[PlayerId] then
        if IsUpgrade then
            call UnitSetUpgradeProgress     ( CurrentStructure, kj_AUTO_PROGRESS_STEP[PlayerId] )
        else
            call UnitSetConstructionProgressTimedKJ( CurrentStructure, kj_AUTO_PROGRESS_STEP[PlayerId], 0.5 )
        endif
    endif
    
    set CurrentStructure        = null
    set Owner                   = null
    
    return
endfunction 

function InitAutoProgressorKJ takes nothing returns nothing
    local   integer ptrIndex        = 0
    local   integer ptrFinal        = bj_MAX_PLAYERS
    
    set     kj_AUTO_PROGRESSING     = CreateTrigger( )
    call    TriggerAddAction( kj_AUTO_PROGRESSING, function AutoProgressorKJ )
    
    loop
        call TriggerRegisterPlayerUnitEvent( kj_AUTO_PROGRESSING, Player( ptrIndex ), EVENT_PLAYER_UNIT_CONSTRUCT_START, null )
        call TriggerRegisterPlayerUnitEvent( kj_AUTO_PROGRESSING, Player( ptrIndex ), EVENT_PLAYER_UNIT_UPGRADE_START, null )
        set ptrIndex = ptrIndex + 1
    exitwhen ptrIndex == ptrFinal
    endloop
endfunction

// Selector Event

function SelectorKJ takes nothing returns nothing
    local unit      SelectedUnit    = GetTriggerUnit( )
    local player    SelectingPlayer = GetTriggerPlayer( )
    local integer   SelectorId      = GetPlayerId( SelectingPlayer )
    
    if SelectedUnit != null and SelectingPlayer != null then
        set kj_SELECTED[SelectorId] = SelectedUnit
    endif
    
    set SelectedUnit = null
    set SelectingPlayer = null
    
    return
endfunction

function GetEmptyItemSlotKJ takes unit whichUnit returns integer 
    if UnitItemInSlot( whichUnit, 0 ) == null then
        return 0
    elseif UnitItemInSlot( whichUnit, 1 ) == null then
        return 1
    elseif UnitItemInSlot( whichUnit, 2 ) == null then
        return 2
    elseif UnitItemInSlot( whichUnit, 3 ) == null then
        return 3
    elseif UnitItemInSlot( whichUnit, 4 ) == null then
        return 4
    elseif UnitItemInSlot( whichUnit, 5 ) == null then
        return 5
    endif
    return 0
endfunction

function UnitItemSlotIsOccupiedKJ takes unit whichUnit, integer itemSlot returns boolean
    return not ( UnitItemInSlot( whichUnit, itemSlot ) == null )
endfunction

function GiveItemForHeroKJ takes unit whichUnit, integer itemType, integer itemSlot, integer itemCharges returns nothing
    local item whichItem
    local integer defaultSlot = 0
    
    if itemSlot < 0 or itemSlot > 5 then
        set whichItem = UnitAddItemById( whichUnit, itemType )
        if whichItem != null then
            if itemCharges >= 0 then
                call SetItemCharges( whichItem, itemCharges )
            endif
        else
            call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create an item to slot of that the unit." )
            set kj_LastErrorYes = true
        endif
    else
        if UnitItemSlotIsOccupiedKJ(whichUnit, itemSlot ) then
            set defaultSlot = GetEmptyItemSlotKJ( whichUnit ) 
            if UnitAddItemToSlotById( whichUnit, itemType, defaultSlot ) then
                set whichItem = UnitItemInSlot( whichUnit, defaultSlot )
                if itemCharges >= 0 then
                    call SetItemCharges( whichItem, itemCharges )
                endif
            else
                call BJDebugMsg( "|cfffffc01KJ WHAT WAS IT:|r Something went wrong...." )
            endif
        else
            if UnitAddItemToSlotById( whichUnit, itemType, itemSlot ) then
                set whichItem = UnitItemInSlot( whichUnit, itemSlot )
                if itemCharges >= 0 then
                    call SetItemCharges( whichItem, itemCharges )
                endif
            else
                call BJDebugMsg( "|cfffffc01KJ WHAT WAS IT:|r Something went wrong...." )
            endif
        endif
    endif
    set whichItem = null
endfunction

function CreateItemKJ takes integer itemType, real x, real y, integer itemCount, integer itemCharges returns nothing
    local integer NextItem  = 0
    local item    spawnItem
    if itemCount > 1 then
        loop
            set NextItem = NextItem + 1
            set spawnItem = CreateItem( itemType, x, y )
            if spawnItem == null then
                call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create are items that you specified." )
                exitwhen true
            else
                if itemCharges >= 0 then
                    call SetItemCharges( spawnItem, itemCharges )
                endif
            endif
            
        exitwhen NextItem == itemCount
        endloop
    else
        set spawnItem = CreateItem( itemType, x, y )
        if spawnItem == null then
            call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create an item that you specified." )
        else
            if itemCharges >= 0 then
                    call SetItemCharges( spawnItem, itemCharges )
            endif
        endif
    endif
    set spawnItem = null
endfunction

function CheckSTKJ takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local destructable d = LoadDestructableHandle( kj_Table, id, 0 )
    
    if GetDestructableLife(d) <= 0.408 then
        call PauseTimer(t)
        call DestroyTimer(t)
        call RemoveDestructable(d)
        call FlushChildHashtable(kj_Table, id)
    endif
    
    set t = null
    set d = null
endfunction

function daoeKJ takes unit srcDamage, real radius, real dmg, string daoeModel returns nothing
    local group g = CreateGroup()
    local player p = GetOwningPlayer(srcDamage)
    local unit foo
    local real x = GetWidgetX( srcDamage )
    local real y = GetWidgetY( srcDamage )
    
    call GroupEnumUnitsInRange( g, x, y, radius, null )
    
    if daoeModel == "structure+land" or daoeModel == "building+land" or daoeModel == "land+structure" or daoeModel == "land+building" then
         loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and ( IsUnitType( foo, UNIT_TYPE_GROUND ) or IsUnitType( foo, UNIT_TYPE_STRUCTURE ) or IsUnitType( foo, UNIT_TYPE_ANCIENT ) ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "structure+air" or daoeModel == "building+air" or daoeModel == "air+structure" or daoeModel == "air+building" then
         loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and ( IsUnitType( foo, UNIT_TYPE_FLYING ) or IsUnitType( foo, UNIT_TYPE_STRUCTURE ) or IsUnitType( foo, UNIT_TYPE_ANCIENT ) ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "immune+" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and not IsUnitType( foo, UNIT_TYPE_STRUCTURE ) and not IsUnitType( foo, UNIT_TYPE_ANCIENT ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "land" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitType( foo, UNIT_TYPE_GROUND ) and IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and not IsUnitType( foo, UNIT_TYPE_STRUCTURE ) and not IsUnitType( foo, UNIT_TYPE_ANCIENT ) and not IsUnitType( foo, UNIT_TYPE_MAGIC_IMMUNE ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "air" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitType( foo, UNIT_TYPE_FLYING ) and IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and not IsUnitType( foo, UNIT_TYPE_STRUCTURE ) and not IsUnitType( foo, UNIT_TYPE_ANCIENT ) and not IsUnitType( foo, UNIT_TYPE_MAGIC_IMMUNE ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "immune" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and not IsUnitType( foo, UNIT_TYPE_STRUCTURE ) and not IsUnitType( foo, UNIT_TYPE_ANCIENT ) and IsUnitType( foo, UNIT_TYPE_MAGIC_IMMUNE ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "structure" or daoeModel == "building" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and ( IsUnitType( foo, UNIT_TYPE_STRUCTURE ) or IsUnitType( foo, UNIT_TYPE_ANCIENT ) ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "all enemy" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    elseif daoeModel == "all" then
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if not IsUnitType( foo, UNIT_TYPE_DEAD ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    else
        loop
            set foo = FirstOfGroup(g)
        exitwhen foo == null
            if IsUnitEnemy( foo, p ) and not IsUnitType( foo, UNIT_TYPE_DEAD ) and not IsUnitType( foo, UNIT_TYPE_STRUCTURE ) and not IsUnitType( foo, UNIT_TYPE_ANCIENT ) and not IsUnitType( foo, UNIT_TYPE_MAGIC_IMMUNE ) and GetUnitAbilityLevel( foo, 'Aloc' ) < 1 then
                call UnitDamageTarget( srcDamage, foo, dmg, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS )
            endif
            call GroupRemoveUnit( g, foo )
        endloop
    endif
    
    call DestroyGroup(g)
    set g   = null
    set foo = null
endfunction

function CreateSuperTreeKJ takes real x, real y, integer treeType returns nothing
    local timer t = CreateTimer()
    local integer id = GetHandleId(t)
    local destructable d = CreateDestructable( treeType, x, y, GetRandomDirectionDeg( ), GetRandomReal( 0.80, 1.80 ),  GetRandomInt( 0, GetTreeMaxVariations( treeType ) ) )
    
    call SetDestructableMaxLife( d, 100000000. )
    call SaveDestructableHandle( kj_Table, id, 0, d )
    call TimerStart( t, 1.05, true, function CheckSTKJ )
    
    set t = null
    set d = null
endfunction

function CreateUnitKJ takes player wPlayer, integer unitTypeId, real x, real y, real f, integer wCount returns nothing
    local integer NextUnit = 0
    local integer pid = GetPlayerId(wPlayer)
    if wCount > 1 then
        loop
            set NextUnit = NextUnit + 1
            set bj_lastCreatedUnit = CreateUnit( wPlayer, unitTypeId, x, y, f )
            if bj_lastCreatedUnit == null then
                call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create are the war-units that you specified." )
                exitwhen true
            else
                call SetUnitUseFood( bj_lastCreatedUnit, not kj_NO_FOOD_USED[pid] )
            endif
        exitwhen NextUnit == wCount
        endloop
    else
        set bj_lastCreatedUnit = CreateUnit( wPlayer, unitTypeId, x, y, f )
        if bj_lastCreatedUnit == null then
            call BJDebugMsg( "|cfff00303KJ ERROR:|r Unable to create the war-unit that you specified." )
        else
            call SetUnitUseFood( bj_lastCreatedUnit, not kj_NO_FOOD_USED[pid] )
        endif
    endif
endfunction

function InitSelectorKJ takes nothing returns nothing
    local   integer ptrIndex        = 0
    local   integer ptrFinal        = bj_MAX_PLAYERS
    
    set kj_ADDON_TRIGGER_SELECTOR = CreateTrigger()
    call TriggerAddAction( kj_ADDON_TRIGGER_SELECTOR, function SelectorKJ )
    
    loop
        call TriggerRegisterPlayerUnitEvent(kj_ADDON_TRIGGER_SELECTOR, Player( ptrIndex ), EVENT_PLAYER_UNIT_SELECTED, null )
        set ptrIndex = ptrIndex + 1
    exitwhen ptrIndex == ptrFinal
    endloop
    
endfunction

// Chat Work's Commands 

function ChatCommandsSGKJ takes integer BufferId, integer BufferSize, player Chater returns nothing
    local group         syncGroup       = CreateGroup()
    local unit          syncUnit
    local integer       Data1           = 0
    local integer       Data2           = 0
    local integer       Data3           = 0
    local integer       Data4           = 0
    local real          RealData1       = 0
    local real          RealData2       = 0
    local player        TargetPlayer
    local playercolor   PlayerColorYes
    
    call SyncSelections()
    call GroupEnumUnitsSelected( syncGroup, Chater, null )
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_DELETE or kj_Commands[BufferId] == kj_ADDON_CHAT_DEL then
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call RemoveUnit( syncUnit )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_GIVE_ITEM or kj_Commands[BufferId] == kj_ADDON_CHAT_GIVE_ITEM2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call GiveItemForHeroKJ( syncUnit, Data1, -1, -1 )
                if kj_LastErrorYes then
                    exitwhen true
                endif
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        elseif BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data2 < -1 or Data2 > 5 then
                set Data2 = -1
            endif
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call GiveItemForHeroKJ( syncUnit, Data1, Data2, -1 )
                if kj_LastErrorYes then
                    exitwhen true
                endif
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data2 < -1 or Data2 > 5 then
                set Data2 = -1
            endif
            if Data3 < -1 or Data3 > 10000 then
                set Data3 = 1
            endif
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call GiveItemForHeroKJ( syncUnit, Data1, Data2, Data3 )
                if kj_LastErrorYes then
                    exitwhen true
                endif
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        endif
        call LastErrorClearKJ()
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_OWNER or kj_Commands[BufferId] == kj_ADDON_CHAT_OWN then
        if BufferSize == 2 then
            set Data1           = ColorNameToIntKJ(kj_Commands[BufferId+1])
            set TargetPlayer    = Player(Data1)
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call SetUnitOwner( syncUnit, TargetPlayer, true )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_RESETCD or kj_Commands[BufferId] == kj_ADDON_CHAT_RESETCD2 then
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call UnitResetCooldown( syncUnit )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    // SETUNIT Color
    if kj_Commands[BufferId] == kj_ADDON_CHAT_COLOR then
        if BufferSize == 2 then
            set PlayerColorYes = ColorNameToColorKJ(kj_Commands[BufferId+1])
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call SetUnitColor( syncUnit,  PlayerColorYes )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        endif
    endif
    
    // Set unit use food
    if kj_Commands[BufferId] == kj_ADDON_CHAT_USEFOOD or kj_Commands[BufferId] == kj_ADDON_CHAT_UF then
        if BufferSize == 2 then
            set Data1 = S2I( kj_Commands[BufferId+1] )
            if Data1 < 0 or Data1 > 1 then
                set Data1 = 1
            endif
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call SetUnitUseFood( syncUnit, Data1 > 0 )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        else
             loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call SetUnitUseFood( syncUnit, true )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        endif
    endif
    
    // SET LIFE FOR SELETED GROUP OF PLAYERS
    if kj_Commands[BufferId] == kj_ADDON_CHAT_LIFE or kj_Commands[BufferId] == kj_ADDON_CHAT_HEALTH or kj_Commands[BufferId] == kj_ADDON_CHAT_H then
        if BufferSize == 2 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call UnitLifeKJ( syncUnit, RealData1 )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        elseif BufferSize == 3 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            if kj_Commands[BufferId+2] == kj_ADDON_CHAT_PLUS then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitLifeKJ( syncUnit, GetWidgetLife(syncUnit) + RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_MINUS then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitLifeKJ( syncUnit, GetWidgetLife(syncUnit) - RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_EQUAL then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitLifeKJ( syncUnit, RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            endif
        endif
    endif
        
        // SET VULNERABLE 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_VULNERABLE or kj_Commands[BufferId] == kj_ADDON_CHAT_VULNERABLE2 then
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call SetUnitInvulnerable( syncUnit, false )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    // SET INVULNERABLE 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_INVULNERABLE or kj_Commands[BufferId] == kj_ADDON_CHAT_INVULNERABLE2 then
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call SetUnitInvulnerable( syncUnit, true )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    // SET MANA FOR SELETED GROUP OF PLAYERS
    if kj_Commands[BufferId] == kj_ADDON_CHAT_MANA or kj_Commands[BufferId] == kj_ADDON_CHAT_M then
        if BufferSize == 2 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            loop
                set syncUnit = FirstOfGroup( syncGroup )
            exitwhen syncUnit == null
                call UnitManaKJ( syncUnit, RealData1 )
                call GroupRemoveUnit( syncGroup, syncUnit )
            endloop
        elseif BufferSize == 3 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            if kj_Commands[BufferId+2] == kj_ADDON_CHAT_PLUS then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitManaKJ( syncUnit, GetUnitState(syncUnit, UNIT_STATE_MANA ) + RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_MINUS then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitManaKJ( syncUnit, GetUnitState(syncUnit, UNIT_STATE_MANA ) - RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_EQUAL then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitManaKJ( syncUnit, RealData1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            endif
        endif
    endif
    
    // ABILITY ADD / DEL / CHANGE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_ABILITY or kj_Commands[BufferId] == kj_ADDON_CHAT_ABILITY2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' or Data1 <= 'zzzz' then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitAddAbility( syncUnit, Data1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            endif
        elseif BufferSize == 3 or BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' or Data1 <= 'zzzz' then
                if kj_Commands[BufferId+2] == kj_ADDON_CHAT_DEL or kj_Commands[BufferId+2] == kj_ADDON_CHAT_DELETE then
                    loop
                        set syncUnit = FirstOfGroup( syncGroup )
                    exitwhen syncUnit == null
                        call UnitRemoveAbility( syncUnit, Data1 )
                        call GroupRemoveUnit( syncGroup, syncUnit )
                    endloop
                elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_CHANGE or kj_Commands[BufferId+2] == kj_ADDON_CHAT_CHANGE2 then
                    set Data2 = S2I(kj_Commands[BufferId+3])
                    if Data2 < 0 or Data2 > 1000 then
                        set Data2 = 0
                    endif
                    loop
                        set syncUnit = FirstOfGroup( syncGroup )
                    exitwhen syncUnit == null
                        call SetUnitAbilityLevel( syncUnit, Data1, Data2 )
                        call GroupRemoveUnit( syncGroup, syncUnit )
                    endloop
                else
                    set Data2 = S2I(kj_Commands[BufferId+2])
                    if Data2 < 0 or Data2 > 1000 then
                        set Data2 = 0
                    endif
                    loop
                        set syncUnit = FirstOfGroup( syncGroup )
                    exitwhen syncUnit == null
                        call UnitAddAbility( syncUnit, Data1 )
                        call SetUnitAbilityLevel( syncUnit, Data1, Data2 )
                        call GroupRemoveUnit( syncGroup, syncUnit )
                    endloop
                endif
            endif
        endif
    endif
    // END ABILITY ADD / DEL / CHANGE
    
    // Set progress for buldings
    if  kj_Commands[BufferId] == kj_ADDON_CHAT_PROGRESS or kj_Commands[BufferId] == kj_ADDON_CHAT_UPGRADE then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 99 then
                set Data1 = 99
            endif
            if kj_Commands[BufferId] == kj_ADDON_CHAT_PROGRESS then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitSetConstructionProgress( syncUnit, Data1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            elseif kj_Commands[BufferId] == kj_ADDON_CHAT_UPGRADE then
                loop
                    set syncUnit = FirstOfGroup( syncGroup )
                exitwhen syncUnit == null
                    call UnitSetUpgradeProgress( syncUnit, Data1 )
                    call GroupRemoveUnit( syncGroup, syncUnit )
                endloop
            endif
        endif
    endif
    
    
    set syncUnit        = null
    set syncGroup       = null
    set TargetPlayer    = null
    set PlayerColorYes  = null
endfunction

function ccExtraSGKJ takes integer BufferId, integer BufferSize, player Chater returns nothing
    local group         syncGroup       = CreateGroup()
    local unit          syncUnit
    local integer       Data1           = 0
    local integer       Data2           = 0
    local integer       Data3           = 0
    local integer       Data4           = 0
    local real          RealData1       = 0
    local real          RealData2       = 0
    
    call SyncSelections()
    call GroupEnumUnitsSelected( syncGroup, Chater, null )
    
    // Secret chat cmd
    if kj_Commands[BufferId] == "--deinventory" then
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call UnitRemoveAbility( syncUnit, 'AInv' )
            call UnitRemoveAbility( syncUnit, 'Aien' )
            call UnitRemoveAbility( syncUnit, 'Aiun' )
            call UnitRemoveAbility( syncUnit, 'Aion' )
            call UnitRemoveAbility( syncUnit, 'Aihn' )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    // SET GROUP VERTEX COLOR
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_VERTEX or kj_Commands[BufferId] == kj_ADDON_CHAT_X_VEX then
        if BufferSize > 1 then
            set Data1 = kj255(S2I(kj_Commands[BufferId+1]))
        else
            set Data1 = 255
        endif
        if BufferSize > 2 then 
            set Data2 = kj255(S2I(kj_Commands[BufferId+2]))
        else
            set Data2 = 255
        endif
        if BufferSize > 3 then 
            set Data3 = kj255(S2I(kj_Commands[BufferId+3]))
        else
            set Data3 = 255
        endif
        if BufferSize > 4 then 
            set Data4 = kj255(S2I(kj_Commands[BufferId+4]))
        else
            set Data4 = 255
        endif
        loop
            set syncUnit = FirstOfGroup( syncGroup )
        exitwhen syncUnit == null
            call SetUnitVertexColor( syncUnit, Data1, Data2, Data3, Data4 )
            call GroupRemoveUnit( syncGroup, syncUnit )
        endloop
    endif
    
    call GroupClear( syncGroup )
    call DestroyGroup(syncGroup)
    
endfunction

function CommandsExtraKJ takes integer BufferId, integer BufferSize, player Chater, integer ChaterId returns nothing
    local integer   Data1           = 0
    local integer   Data2           = 0
    local integer   Data3           = 0
    local integer   Data4           = 0
    local real      RealData1       = 0.
    local real      RealData2       = 0.
    local real      RealData3       = 0.
    local player    kjp
    
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_SELECTED or kj_Commands[BufferId] == kj_ADDON_CHAT_SELECTED2 then
        if BufferSize >= 2 then
            call ccExtraSGKJ(BufferId+1, BufferSize -1, Chater )
        endif
        set kjp = null
        return
    endif
    
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_HANDICAP or kj_Commands[BufferId] == kj_ADDON_CHAT_X_HANDICAP2 then
		if BufferSize == 2 then
			set RealData1 = S2R(kj_Commands[BufferId+1])
			if RealData1 < 0.1 or RealData1 > 20.0 then
				set RealData1 = 1.0
			endif
			call SetPlayerHandicap( Chater, RealData1 )
		elseif BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			set RealData1 = S2R(kj_Commands[BufferId+2])
			if Data1 < 0 or Data1 > PLAYER_NEUTRAL_PASSIVE then
				set Data1 = 0
			endif
			if RealData1 < 0.1 or RealData1 > 20.0 then
				set RealData1 = 1.0
			endif
			set kjp = Player(Data1)
			call SetPlayerHandicap( kjp, RealData1 )
		endif
	endif
	
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_PLAYERSTATE or kj_Commands[BufferId] == kj_ADDON_CHAT_X_PLAYERSTATE2 then
		if BufferSize == 3 then
			 set Data1 = S2I(kj_Commands[BufferId+2])
			 if kj_Commands[BufferId+1] == kj_ADDON_CHAT_USEFOOD or kj_Commands[BufferId+1] == kj_ADDON_CHAT_UF then	
				call SetPlayerState( Chater, PLAYER_STATE_RESOURCE_FOOD_USED, Data1 )
			 elseif kj_Commands[BufferId+1] ==kj_ADDON_CHAT_X_MAX_FOOD or kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_MAX_FOOD2 then
				if Data1 < 0 or Data1 > 10000 then
					set Data1 = 0
				endif
				call SetPlayerState( Chater, PLAYER_STATE_FOOD_CAP_CEILING, Data1 ) 
			 elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_FOOD_LIMIT or kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_FOOD_LIMIT2 then
				if Data1 < 0 or Data1 > 10000 then
					set Data1 = 0
				endif
				call SetPlayerState( Chater, PLAYER_STATE_RESOURCE_FOOD_CAP, Data1 )
			 endif
		elseif BufferSize == 4 then
			 set Data1 = S2I(kj_Commands[BufferId+2])
			 set Data2 = S2I(kj_Commands[BufferId+3])
			 if Data2 < 0 or Data2 > bj_MAX_PLAYERS then
				set Data2 = 0
			 endif
			 if kj_Commands[BufferId+1] == kj_ADDON_CHAT_USEFOOD or kj_Commands[BufferId+1] == kj_ADDON_CHAT_UF then	
				call SetPlayerState( Player(Data2), PLAYER_STATE_RESOURCE_FOOD_USED, Data1 )
			 elseif kj_Commands[BufferId+1] ==kj_ADDON_CHAT_X_MAX_FOOD or kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_MAX_FOOD2 then
				if Data1 < 0 or Data1 > 10000 then
					set Data1 = 0
				endif
				call SetPlayerState( Player(Data2), PLAYER_STATE_FOOD_CAP_CEILING, Data1 ) 
			 elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_FOOD_LIMIT or kj_Commands[BufferId+1] == kj_ADDON_CHAT_X_FOOD_LIMIT2 then
				if Data1 < 0 or Data1 > 10000 then
					set Data1 = 0
				endif
				call SetPlayerState( Player(Data2), PLAYER_STATE_RESOURCE_FOOD_CAP, Data1 )
			 endif
		endif
	endif
	
	// KJ SKILL POINTS
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_SKP or kj_Commands[BufferId] == kj_ADDON_CHAT_X_SKP2 then
		if IsUnitType( kj_SELECTED[ChaterId], UNIT_TYPE_HERO ) then
			if BufferSize == 2 then
				set Data1 = S2I(kj_Commands[BufferId+1])
				if Data1 < 0 or Data1 > 1000 then
					set Data1 = 0
				endif
				call UnitModifySkillPoints( kj_SELECTED[ChaterId], Data1 )
			elseif BufferSize == 3 and kj_Commands[BufferId+2] == "-" then
				set Data1 = S2I(kj_Commands[BufferId+1])
				if Data1 < 0 or Data1 > 1000 then
					set Data1 = 0
				endif
				set Data2 = GetHeroSkillPoints(kj_SELECTED[ChaterId])
				if Data1 > Data2 then
					set Data1 = 0 - Data2
				else
					set Data1 = 0 - Data1
				endif
				call UnitModifySkillPoints( kj_SELECTED[ChaterId], Data1 )
			else
				call UnitModifySkillPoints( kj_SELECTED[ChaterId], 1 )
			endif
		endif
	endif
	
	// REFORGED
	// 1.31 ok
	// KJ ATTACK UNIT
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_ATTACK then
		if BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			set Data2 = S2I(kj_Commands[BufferId+2])
			if Data1 >= 0 and Data1 <= 3 and Data2 >= 0 and Data2 <= 99999999 then
				call BlzSetUnitBaseDamage( kj_SELECTED[ChaterId], Data2, Data1 )
			endif
		elseif BufferSize == 4 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			set Data2 = S2I(kj_Commands[BufferId+2])
			if Data1 >= 0 and Data1 <= 3 and Data2 >= 0 and Data2 <= 99999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitBaseDamage( kj_SELECTED[ChaterId], BlzGetUnitBaseDamage( kj_SELECTED[ChaterId],Data1) + Data2, Data1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					call BlzSetUnitBaseDamage( kj_SELECTED[ChaterId], BlzGetUnitBaseDamage( kj_SELECTED[ChaterId],Data1) - Data2, Data1 ) 
				else
					call BlzSetUnitBaseDamage( kj_SELECTED[ChaterId], Data2, Data1 )
				endif
			endif
		endif
	endif
	
	// KJ ARMOR UNIT
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_ARMOR then
		if BufferSize == 2 then
			set RealData1 = S2I(kj_Commands[BufferId+1])
			if RealData1 >= 0 and RealData1 <= 99999999 then
				call BlzSetUnitArmor( kj_SELECTED[ChaterId], RealData1 )
			endif
		elseif BufferSize == 3 then
			set RealData1 = S2I(kj_Commands[BufferId+1])
			if RealData1 >= 0 and RealData1 <= 99999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitArmor( kj_SELECTED[ChaterId], BlzGetUnitArmor( kj_SELECTED[ChaterId]) + RealData1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					call BlzSetUnitArmor( kj_SELECTED[ChaterId], BlzGetUnitArmor( kj_SELECTED[ChaterId]) - RealData1) 
				else
					call BlzSetUnitArmor( kj_SELECTED[ChaterId],RealData1 )
				endif
			endif
		endif
	endif
	
	// KJ MAX_MANA
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_MAX_MANA then
		if BufferSize == 2 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			if Data1 >= 0 and Data1 <= 99999999 then
				call BlzSetUnitMaxMana( kj_SELECTED[ChaterId], Data1 )
			endif
		elseif BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			if Data1 >= 0 and Data1 <= 99999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitMaxMana( kj_SELECTED[ChaterId], BlzGetUnitMaxMana( kj_SELECTED[ChaterId]) + Data1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					set Data2 = BlzGetUnitMaxMana( kj_SELECTED[ChaterId])
					if Data2 < Data1 then
						set Data1 = Data2 
					endif
					call BlzSetUnitMaxMana( kj_SELECTED[ChaterId], Data2 - Data1) 
				else
					call BlzSetUnitMaxMana( kj_SELECTED[ChaterId],Data1 )
				endif
			endif
		endif
	endif
	
	// KJ MAX_HP
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_MAX_LIFE then
		if BufferSize == 2 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			if Data1 >= 1 and Data1 <= 99999999 then
				call BlzSetUnitMaxHP( kj_SELECTED[ChaterId], Data1 )
			endif
		elseif BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			if Data1 >= 1 and Data1 <= 99999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitMaxHP( kj_SELECTED[ChaterId], BlzGetUnitMaxHP( kj_SELECTED[ChaterId]) + Data1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					set Data2 = BlzGetUnitMaxHP( kj_SELECTED[ChaterId])
					if RealData2 < Data1 then
						set Data1 = Data2 - 1
					endif
					call BlzSetUnitMaxHP( kj_SELECTED[ChaterId], Data2 - Data1) 
				else
					call BlzSetUnitMaxHP( kj_SELECTED[ChaterId],Data1 )
				endif
			endif
		endif
	endif
	
	// KJ RATIO ATTACK
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_RATIO then
		if BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			set RealData2 = S2R(kj_Commands[BufferId+2])
			if Data1 >= 0 and Data1 <= 3 and RealData2 >= 0 and RealData2 <= 99999999 then
				call BlzSetUnitAttackCooldown( kj_SELECTED[ChaterId], RealData2, Data1 )
			endif
		elseif BufferSize == 4 then
			set Data1 = S2I(kj_Commands[BufferId+1])
			set RealData2 = S2R(kj_Commands[BufferId+2])
			if Data1 >= 0 and Data1 <= 3 and RealData2 >= 0.0 and RealData2 <= 100.0 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitAttackCooldown( kj_SELECTED[ChaterId], BlzGetUnitAttackCooldown( kj_SELECTED[ChaterId],Data1) + RealData2, Data1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					call BlzSetUnitAttackCooldown( kj_SELECTED[ChaterId], BlzGetUnitAttackCooldown( kj_SELECTED[ChaterId],Data1) - RealData2, Data1 ) 
				else
					call BlzSetUnitAttackCooldown( kj_SELECTED[ChaterId], RealData2, Data1 )
				endif
			endif
		endif
	endif
	
	// KJ UNITNAME
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_NAME or kj_Commands[BufferId] == "un" then
		if BufferSize == 2 then
			call BlzSetUnitName( kj_SELECTED[ChaterId], kj_Commands[BufferId + 1] )
		endif
	endif
	
	// KJ HERONAME
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_TITLE or kj_Commands[BufferId] == "prop" then
		if BufferSize == 2 then
			call BlzSetHeroProperName( kj_SELECTED[ChaterId], kj_Commands[BufferId + 1] )
		endif
	endif
	
	// KJ MANA_REGEN
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_MANA_REGEN then
		if BufferSize == 2 then
			set RealData1 = S2R(kj_Commands[BufferId+1])
			if RealData1 >= -999999 and RealData1 <= 999999 then
				call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION, RealData1 )
			endif
		elseif BufferSize == 3 then
			set RealData1 = S2R(kj_Commands[BufferId+1])
			if RealData1 >= -999999 and RealData1 <= 999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION, BlzGetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION) + RealData1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION, BlzGetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION) - RealData1 )
				else
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_MANA_REGENERATION, RealData1 )
				endif
			endif
		endif
	endif
	
	// KJ LIFE_REGEN
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_LIFE_REGEN then
		if BufferSize == 2 then
			set RealData1 = S2R(kj_Commands[BufferId+1])
			if RealData1 >= -999999 and RealData1 <= 999999 then
				call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE, RealData1 )
			endif
		elseif BufferSize == 3 then
			set RealData1 = S2R(kj_Commands[BufferId+1])
			if RealData1 >= -999999 and RealData1 <= 999999 then
				if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE, BlzGetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE ) + RealData1 )
				elseif kj_Commands[BufferId+3]== kj_ADDON_CHAT_MINUS then
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE, BlzGetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE ) - RealData1 )
				else
					call BlzSetUnitRealField( kj_SELECTED[ChaterId], UNIT_RF_HIT_POINTS_REGENERATION_RATE, RealData1 )
				endif
			endif
		endif
	endif
	
	
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_DERESEARCH  or kj_Commands[BufferId] == kj_ADDON_CHAT_X_DERESEARCH2 then
        if BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= 0 and Data2 <= 1000 then
                call BlzDecPlayerTechResearched( Chater, Data1, Data2 )
            endif
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= 0 and Data2 <= 1000 and Data3 >= 0 and Data3 <= PLAYER_NEUTRAL_PASSIVE then
                call BlzDecPlayerTechResearched( Player(Data3), Data1, Data2 )
            endif
        endif
    endif
	
	// REFORGED
	
	// KJ BLOCK_ABILITY
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_BLOCK_ABILITY  or kj_Commands[BufferId] == kj_ADDON_CHAT_X_BLOCK_ABILITY2 then
		if BufferSize == 4 then
			set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
			set Data2 = S2I(kj_Commands[BufferId+2])
			set Data3 = S2I(kj_Commands[BufferId+3])
			if Data1 >= '0000'  and Data1 <= 'zzzz' then
				call BlzUnitDisableAbility( kj_SELECTED[ChaterId], Data1, Data2 > 0, Data3 > 0 )
			endif
		elseif BufferSize == 3 then
			set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
			set Data2 = S2I(kj_Commands[BufferId+2])
			if Data1 >= '0000'  and Data1 <= 'zzzz' then
				call BlzUnitDisableAbility( kj_SELECTED[ChaterId], Data1, Data2 > 0, false )
			endif
		elseif  BufferSize == 2 then
			set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
			if Data1 >= '0000'  and Data1 <= 'zzzz' then
				call BlzUnitDisableAbility( kj_SELECTED[ChaterId], Data1, false, false )
			endif
		endif
	endif
	// KJ HIDE_ABILITY
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_HIDE_ABILITY  or kj_Commands[BufferId] == kj_ADDON_CHAT_X_HIDE_ABILITY2 then
		if BufferSize == 3 then
			set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
			set Data2 = S2I(kj_Commands[BufferId+2])
			if Data1 >= '0000'  and Data1 <= 'zzzz' then
				call BlzUnitHideAbility( kj_SELECTED[ChaterId], Data1, Data2 > 0)
			endif
		elseif  BufferSize == 2 then
			set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
			if Data1 >= '0000'  and Data1 <= 'zzzz' then
				call BlzUnitHideAbility( kj_SELECTED[ChaterId], Data1, false )
			endif
		endif
	endif
	
	// END REFORGED
	
	// KJ GATEWAY SEETINGS
	if kj_Commands[BufferId] == kj_ADDON_CHAT_X_GW or kj_Commands[BufferId] == kj_ADDON_CHAT_X_GW2 then
		if GetUnitAbilityLevel( kj_SELECTED[ChaterId], 'Awrp' ) > 0 then
			if BufferSize == 2 then
				if kj_Commands[BufferId+1] == "on" then
					if not WaygateIsActive(kj_SELECTED[ChaterId]) then
						call WaygateActivate( kj_SELECTED[ChaterId], true )
					else 
						call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffff9303KJ WARNING|r The portal is already on." )
					endif
				elseif kj_Commands[BufferId+1] == "off" then
					if WaygateIsActive(kj_SELECTED[ChaterId]) then
						call WaygateActivate( kj_SELECTED[ChaterId], false )
					else 
						call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffff9303KJ WARNING|r The portal is already off." )
					endif
				endif
			elseif BufferSize == 3 then
				set RealData1 = kjSFX(S2R(kj_Commands[BufferId+1]))
				set RealData2 = kjSFY(S2R(kj_Commands[BufferId+2]))
				
				call WaygateSetDestination( kj_SELECTED[ChaterId], RealData1, RealData2 )
				
				call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff7fe7ffKJ INFO|r The destination of the portal has changed to: [|cffe4b216 " + R2S(WaygateGetDestinationX(kj_SELECTED[ChaterId])) + " |cff03fc05], [|cffe4b216 " + R2S(WaygateGetDestinationY(kj_SELECTED[ChaterId])) + " |cff03fc05]|r" )
				if WaygateIsActive(kj_SELECTED[ChaterId]) then
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005On| ]" )
				else
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005Off| ]" )
				endif
			elseif BufferSize == 4 then
				set RealData1 = kjSFX(S2R(kj_Commands[BufferId+1]))
				set RealData2 = kjSFY(S2R(kj_Commands[BufferId+2]))
				
				if kj_Commands[BufferId+3] == "on" then
					if not WaygateIsActive(kj_SELECTED[ChaterId]) then
						call WaygateActivate( kj_SELECTED[ChaterId], true )
					endif
				elseif kj_Commands[BufferId+3] == "off" then
					if WaygateIsActive(kj_SELECTED[ChaterId]) then
						call WaygateActivate( kj_SELECTED[ChaterId], false )
					endif
				endif
				
				call WaygateSetDestination( kj_SELECTED[ChaterId], RealData1, RealData2 )
				
				call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff7fe7ffKJ INFO|r The destination of the portal has changed to: [|cffe4b216 " + R2S(WaygateGetDestinationX(kj_SELECTED[ChaterId])) + " |cff03fc05], [|cffe4b216 " + R2S(WaygateGetDestinationY(kj_SELECTED[ChaterId])) + " |cff03fc05]|r" )
				if WaygateIsActive(kj_SELECTED[ChaterId]) then
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005On| ]" )
				else
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005Off| ]" )
				endif
			else
				call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff7fe7ffThe destination of the portal is: [|cffe4b216 " + R2S(WaygateGetDestinationX(kj_SELECTED[ChaterId])) + " |cff03fc05], [|cffe4b216 " + R2S(WaygateGetDestinationY(kj_SELECTED[ChaterId])) + " |cff03fc05]|r" )
				if WaygateIsActive(kj_SELECTED[ChaterId]) then
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005On| ]" )
				else
					call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffffff00Protal Status:|r [ |cff03f005Off| ]" )
				endif
			endif
		else
			call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffff0303KJ Error|r  Unable change a destination of this portal because selected unit hasn't the ability as |cff999999\"Teleportation via the Portal\"|r.")
		endif
	endif
	
    // Secret chat commands getting object's name
    if kj_Commands[BufferId] == "objectname" or kj_Commands[BufferId] == "object name" or kj_Commands[BufferId] == "o" then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' and Data1 <= 'zzzz' then
                call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff03fc03Object|cffe4b216[ |cfffc0303'"+kj_Commands[BufferId+1]+"' |cffe4b216]:|r " + GetObjectName(Data1) )
            endif
        endif
    endif
    
    // Secret super-tech-levle kek
    
    if kj_Commands[BufferId] == "okko" or kj_Commands[BufferId] == "okayko" then
        if BufferSize > 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > PLAYER_NEUTRAL_PASSIVE then
                set Data1 = 0
            endif
            call SetAllTechLevelKJ( Player(Data1), Name2RaceKJ(kj_Commands[BufferId+2])) 
        elseif BufferSize > 1 then
            call SetAllTechLevelKJ(Chater, Name2RaceKJ(kj_Commands[BufferId+1]))
        else
            call SetAllTechLevelKJ( Chater, RACE_HUMAN )
            call SetAllTechLevelKJ( Chater, RACE_ORC )
            call SetAllTechLevelKJ( Chater, RACE_UNDEAD )
            call SetAllTechLevelKJ( Chater, RACE_NIGHTELF )
            call SetAllTechLevelKJ( Chater, RACE_DEMON )
            call SetAllTechLevelKJ( Chater, RACE_OTHER )
        endif
    endif
    
    // Set Player's Ability Avaibility
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_ABILITY_AV or kj_Commands[BufferId] == kj_ADDON_CHAT_X_AA then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' or Data1 <= 'zzzz' then
                call SetPlayerAbilityAvailable( Chater, Data1, true )
            endif
        elseif BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            call SetPlayerAbilityAvailable( Chater, Data1, Data2 > 0 )
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            call SetPlayerAbilityAvailable( Player(Data2), Data1, Data3 > 0 )
        endif
    endif
    
    // Secret chat cmd
    if kj_Commands[BufferId] == "--deinventory" then
        call UnitRemoveAbility( kj_SELECTED[ChaterId], 'AInv' )
        call UnitRemoveAbility( kj_SELECTED[ChaterId], 'Aien' )
        call UnitRemoveAbility( kj_SELECTED[ChaterId], 'Aiun' )
        call UnitRemoveAbility( kj_SELECTED[ChaterId], 'Aion' )
        call UnitRemoveAbility( kj_SELECTED[ChaterId], 'Aihn' )
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_CID then
        if BufferSize == 2 then
            call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff03f003Player Id of the specified color: |cfffcfc03" + I2S(ColorNameToIntKJ(kj_Commands[BufferId+1])) + "|r" )
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_IDC then
        if BufferSize == 2 then
            call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cfffc0303Player color from the specified id: |cffe4b216" +  IntToColorNameKJ(S2I(kj_Commands[BufferId+1])) + "|r" )
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_PID or kj_Commands[BufferId] == kj_ADDON_CHAT_X_PLAYER_INDEX then
        call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffa5a5a5Player index of that unit:|r |cff03f003[|cfffcfc03 " + I2S( GetPlayerId( GetOwningPlayer( kj_SELECTED[ChaterId] ) ) ) + " |cff03f003]|r"  )
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_VERTEX or kj_Commands[BufferId] == kj_ADDON_CHAT_X_VEX then
        if BufferSize > 1 then
            set Data1 = kj255(S2I(kj_Commands[BufferId+1]))
        else
            set Data1 = 255
        endif
        if BufferSize > 2 then 
            set Data2 = kj255(S2I(kj_Commands[BufferId+2]))
        else
            set Data2 = 255
        endif
        if BufferSize > 3 then 
            set Data3 = kj255(S2I(kj_Commands[BufferId+3]))
        else
            set Data3 = 255
        endif
        if BufferSize > 4 then 
            set Data4 = kj255(S2I(kj_Commands[BufferId+4]))
        else
            set Data4 = 255
        endif
        call SetUnitVertexColor( kj_SELECTED[ChaterId], Data1, Data2, Data3, Data4 )
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_AREA_DAMAGE then
        if BufferSize == 3 or BufferSize == 4 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            set RealData2 = S2R(kj_Commands[BufferId+2])
            if RealData1 < 100.0 or RealData1 > 99999.0 then
                set RealData1 = 450.0
            endif
            if RealData1 < 0.0 or RealData1 > 99999999.0 then
                set RealData1 = 300.0
            endif
            if BufferSize == 4 then
                call daoeKJ( kj_SELECTED[ChaterId], RealData1, RealData2, kj_Commands[BufferId+3] )
            else
                call daoeKJ( kj_SELECTED[ChaterId], RealData1, RealData2, "" )
            endif
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_X_RT or kj_Commands[BufferId] == kj_ADDON_CHAT_X_RESURRECT_TREES then
        if BufferSize == 2 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            call ResurrectTreesKJ(RealData1,GetWidgetX(kj_SELECTED[ChaterId]),GetWidgetY(kj_SELECTED[ChaterId]))
        elseif BufferSize == 3 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            set RealData2 = S2R(kj_Commands[BufferId+2])
            set RealData3 = S2R(kj_Commands[BufferId+3])
            call ResurrectTreesKJ(RealData1,RealData2,RealData3)
        else
            call rtEntireKJ()
        endif
    endif
    
    set kjp = null
endfunction

function ChatCommandsKJ takes nothing returns nothing
    local string    chatStr     = GetEventPlayerChatString()
    local player    Chater      = GetTriggerPlayer()
    local integer   ChaterId    = GetPlayerId( Chater )
    local integer   Data1       = 0
    local integer   Data2       = 0
    local integer   Data3       = 0
    local real      RealData1   = 0.
    local real      RealData2   = 0.
    local real      RealData3   = 0.
    local player    TargetPlayer= null
    local player    SourcePlayer= null
    // System local parrametrs
    
    local integer BufferId      = kj_BufferCommands * ChaterId  
    local integer BufferSize    = 0
    
    call ParseCommandsKJ(SubString(chatStr,1,StringLength(chatStr)), ChaterId )
    set BufferSize    = kj_BufferSize[ChaterId]
    
    set chatStr = null
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_EXRTA or kj_Commands[BufferId] == kj_ADDON_CHAT_EXTRA_SHORTCUT then
        if BufferSize >= 2 then
            call CommandsExtraKJ(BufferId+1, BufferSize -1, Chater, ChaterId )
        endif
        set Chater          = null
        set TargetPlayer    = null
        set SourcePlayer    = null
        return
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_SELECTED or kj_Commands[BufferId] == kj_ADDON_CHAT_SELECTED2 then
        if BufferSize >= 2 then
            call ChatCommandsSGKJ(BufferId+1, BufferSize -1, Chater )
        endif
        set Chater          = null
        set TargetPlayer    = null
        set SourcePlayer    = null
        return
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_REMOVE_BROKEN_ITEMS then
        call RemoveAllBrokenItemsKJ()
        set Chater          = null
        set TargetPlayer    = null
        set SourcePlayer    = null
        return
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_CLEAR then
        call ClearChatForPlayerKJ(Chater)
        set Chater          = null
        set TargetPlayer    = null
        set SourcePlayer    = null
        return
    endif
    
    // Deleted a single the seleted a unit
    if kj_Commands[BufferId] == kj_ADDON_CHAT_DEL or kj_Commands[BufferId] == kj_ADDON_CHAT_DELETE then
        call RemoveUnit( kj_SELECTED[ChaterId] )
    endif
    
    // SET PLAYERNAME
    if kj_Commands[BufferId] ==  kj_ADDON_CHAT_PLAYER_NAME or kj_Commands[BufferId] ==  kj_ADDON_CHAT_PLAYER_NAME2 then
        if BufferSize == 2 then
            call SetPlayerName( Chater, kj_Commands[BufferId+1] )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > PLAYER_NEUTRAL_PASSIVE then
                set Data1 = 0
            endif
            call SetPlayerName( Player(Data1), kj_Commands[BufferId+2] )
        endif
    endif
    
    // SET PLAYERNAME COLORED
    if kj_Commands[BufferId] ==  kj_ADDON_CHAT_PN_COLORED or kj_Commands[BufferId] ==  kj_ADDON_CHAT_PN_COLORED2 then
        if BufferSize == 3 then
            call SetPlayerName( Chater, "|cff" + kj_Commands[BufferId+1] + kj_Commands[BufferId+2]+"|r" )
        elseif BufferSize == 4 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > PLAYER_NEUTRAL_PASSIVE then
                set Data1 = 0
            endif
            call SetPlayerName( Player(Data1), "|cff" + kj_Commands[BufferId+2] + kj_Commands[BufferId+3]+"|r" )
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_DCREATE or kj_Commands[BufferId] == kj_ADDON_CHAT_DCREATE2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if CreateDestructable( Data1, GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), 270., GetRandomReal( 0.80, 1.80), GetRandomInt(0,9) ) == null then
                call BJDebugMsg( "|cffff0303KJ Error|r Unable to create this destructbale or the doodad" )
            endif
        elseif BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set RealData1 = S2R(kj_Commands[BufferId+2])
            if CreateDestructable( Data1, GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, GetRandomReal( 0.80, 1.80), GetRandomInt(0,9) ) == null then
                call BJDebugMsg( "|cffff0303KJ Error|r Unable to create this destructbale or the doodad" )
            endif
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            if CreateDestructable( Data1, RealData1, RealData2, 270., GetRandomReal( 0.80, 1.80), GetRandomInt(0,9) ) == null then
                call BJDebugMsg( "|cffff0303KJ Error|r Unable to create this destructbale or the doodad" )
            endif
        elseif BufferSize == 5 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set RealData3 = S2R(kj_Commands[BufferId+4])
            if CreateDestructable( Data1, RealData1, RealData2, RealData3, GetRandomReal( 0.80, 1.80), GetRandomInt(0,9) ) == null then
                call BJDebugMsg( "|cffff0303KJ Error|r Unable to create this destructbale or the doodad" )
            endif
        elseif BufferSize == 6 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+5])
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set RealData3 = S2R(kj_Commands[BufferId+4])
            if CreateDestructable( Data1, RealData1, RealData2, RealData3, GetRandomReal( 0.80, 1.80), Data2 ) == null then
                call BJDebugMsg( "|cffff0303KJ Error|r Unable to create this destructbale or the doodad" )
            endif
        endif
    endif

    if kj_Commands[BufferId] == kj_ADDON_CHAT_GETUNITTYPE or kj_Commands[BufferId] == kj_ADDON_CHAT_GETUNITTYPE2 then
        set Data1 = GetUnitTypeId( kj_SELECTED[ChaterId] )
        call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "Unit SLK-Name: |cff03ff03[|cfffcfc03 "+ UnitId2String(Data1)+" |cff03ff03]|r, Raw-Code: |cff03ff03[|cfffcfc03 " + GetRawOfIntKJ(Data1)+"|cff03ff03 ]|r" )
    endif
    
    // GOLD FOR PLAYER
    if kj_Commands[BufferId] == kj_ADDON_CHAT_GOLD or kj_Commands[BufferId] == kj_ADDON_CHAT_GOLD2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            call SetPlayerState( Chater, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Chater, PLAYER_STATE_RESOURCE_GOLD ) + Data1 )
            call SetPlayerState( Chater, PLAYER_STATE_GOLD_GATHERED, GetPlayerState( Chater, PLAYER_STATE_GOLD_GATHERED ) + Data1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD ) + Data1 )
            call SetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED ) + Data1 )
        elseif BufferSize == 4 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD ) + Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED ) + Data1 )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_MINUS then
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD ) - Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED ) - Data1 )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_EQUAL then 
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_GOLD, Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_GOLD_GATHERED, Data1 )
            endif
        endif
    endif
    // END GOLD FOR PLAYER 
    
    // SET HERO LEVEL 
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_HERO_LEVEL or kj_Commands[BufferId] == kj_ADDON_CHAT_HERO_LEVEL2 then
        if IsUnitType( kj_SELECTED[ChaterId], UNIT_TYPE_HERO ) then
            if BufferSize == 2 then
                set Data1 = S2I(kj_Commands[BufferId+1])
                if Data1 < 1 or Data2 > 1000 then
                    set Data1 = 10
                endif
                call SetHeroLevel( kj_SELECTED[ChaterId], Data1, true )
            elseif BufferSize == 3 then
                if kj_Commands[BufferId+2] == kj_ADDON_CHAT_DCREATE2 then
                    set Data1 = S2I(kj_Commands[BufferId+1])
                    set Data2 = GetHeroLevel(kj_SELECTED[ChaterId])
                    if Data1 < 1 or Data2 > 1000 or Data1 > Data2 then
                        set Data1 = Data2 - (Data2 - 1)
                    endif
                endif
                call UnitStripHeroLevel( kj_SELECTED[ChaterId], Data1 )
            endif
        else
            call BJDebugMsg("|cfffc0303KJ Error:|r Unable to give lvl for the hero or unit isn't a hero....")
        endif
    endif
    
    // MODIFI HERO's STAT
    if kj_Commands[BufferId] == kj_ADDON_CHAT_HERO_STAT or kj_Commands[BufferId] == kj_ADDON_CHAT_HERO_STAT2 then
        if IsUnitType( kj_SELECTED[ChaterId], UNIT_TYPE_HERO ) then
            if BufferSize == 3 then
                set Data1 = S2I(kj_Commands[BufferId+2])
                if Data1 < 0 or Data1 > 1000000 then
                    set Data1 = 1
                endif
                if kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_AGI then
                    call SetHeroAgi( kj_SELECTED[ChaterId], Data1, true )
                elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_STR then
                    call SetHeroStr( kj_SELECTED[ChaterId], Data1, true )
                elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_INT then
                    call SetHeroStr( kj_SELECTED[ChaterId], Data1, true )
                endif
            elseif BufferSize == 4 then
                set Data1 = S2I(kj_Commands[BufferId+2])
                if Data1 < 0 or Data1 > 100000 then
                    set Data1 = 1
                endif
                if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
                    if kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_AGI then
                        call SetHeroAgi( kj_SELECTED[ChaterId], GetHeroAgi( kj_SELECTED[ChaterId], false ) + Data1, true )
                    elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_STR then
                        call SetHeroStr( kj_SELECTED[ChaterId], GetHeroStr( kj_SELECTED[ChaterId], false ) + Data1, true )
                    elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_INT then
                        call SetHeroStr( kj_SELECTED[ChaterId], GetHeroInt( kj_SELECTED[ChaterId], false ) + Data1, true )
                    endif
                elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_MINUS then
                    if kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_AGI then
                        call SetHeroAgi( kj_SELECTED[ChaterId], GetHeroAgi( kj_SELECTED[ChaterId], false ) - Data1, true )
                    elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_STR then
                        set Data2 = GetHeroStr( kj_SELECTED[ChaterId], false )
                        if Data1 > ( Data2 - 1 ) then
                            set Data1 = 0
                        endif
                        call SetHeroStr( kj_SELECTED[ChaterId], Data2 - Data1, true )
                    elseif kj_Commands[BufferId+1] == kj_ADDON_CHAT_HERO_INT then
                        set Data2 = GetHeroInt( kj_SELECTED[ChaterId], false )
                        if Data1 > ( Data2 - 1 ) then
                            set Data1 = 0
                        endif
                        call SetHeroStr( kj_SELECTED[ChaterId], Data2 - Data1, true )
                    endif
                endif
            endif
        else
            call BJDebugMsg("|cfffc0303KJ Error:|r Unable to to modify stats for the hero or unit isn't a hero....")
        endif
    endif
    
    // SET VULNERABLE 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_VULNERABLE or kj_Commands[BufferId] == kj_ADDON_CHAT_VULNERABLE2 then
        call SetUnitInvulnerable( kj_SELECTED[ChaterId], false )
    endif
    
    // SET INVULNERABLE 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_INVULNERABLE or kj_Commands[BufferId] == kj_ADDON_CHAT_INVULNERABLE2 then
        call SetUnitInvulnerable( kj_SELECTED[ChaterId], true )
    endif
    
    // LUMBER FOR PLAYER
    if kj_Commands[BufferId] == kj_ADDON_CHAT_LUMBER or kj_Commands[BufferId] == kj_ADDON_CHAT_LUMBER2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            call SetPlayerState( Chater, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( Chater, PLAYER_STATE_RESOURCE_LUMBER ) + Data1 )
            call SetPlayerState( Chater, PLAYER_STATE_LUMBER_GATHERED, GetPlayerState( Chater, PLAYER_STATE_LUMBER_GATHERED ) + Data1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER ) + Data1 )
            call SetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED ) + Data1 )
        elseif BufferSize == 4 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            if kj_Commands[BufferId+3] == kj_ADDON_CHAT_PLUS then
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER ) + Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED ) + Data1 )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_MINUS then
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER ) - Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED, GetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED ) - Data1 )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_EQUAL then 
                call SetPlayerState( TargetPlayer, PLAYER_STATE_RESOURCE_LUMBER, Data1 )
                call SetPlayerState( TargetPlayer, PLAYER_STATE_LUMBER_GATHERED, Data1 )
            endif
        endif
    endif
    // END LUMBER FOR PLAYER 
    
    // CREATE UNIT FIRST TAKE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE or kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE2 or kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE3 then
        if kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE3 then
            set RealData1 = 270.0
        else
            set RealData1 = GetUnitFacing( kj_SELECTED[ChaterId] )
        endif
        if BufferSize == 2 then
            call CreateUnitKJ( Chater, UnitId(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, 1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+2])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            call CreateUnitKJ( Chater, UnitId(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, Data1 )
        elseif BufferSize == 4 then
            set Data1 = S2I(kj_Commands[BufferId+2])
            set Data2 = S2I(kj_Commands[BufferId+3])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call CreateUnitKJ( TargetPlayer, UnitId(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, Data1 )
        endif
    endif
    // SPAWN ANALOG CREATE FOR RAW-CODE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN or kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN2 or kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN3 then
        if kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN3 then
            set RealData1 = 270.0
        else
            set RealData1 = GetUnitFacing( kj_SELECTED[ChaterId] )
        endif
        if BufferSize == 2 then
            call CreateUnitKJ( Chater, Raw2IntKJ(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, 1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+2])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            call CreateUnitKJ( Chater, Raw2IntKJ(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, Data1 )
        elseif BufferSize == 4 then
            set Data1 = S2I(kj_Commands[BufferId+2])
            set Data2 = S2I(kj_Commands[BufferId+3])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call CreateUnitKJ( TargetPlayer, Raw2IntKJ(kj_Commands[BufferId+1]), GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), RealData1, Data1 )
        endif
    endif
    
    //1+
    // Set Unit Use Food
    if kj_Commands[BufferId] == kj_ADDON_CHAT_USEFOOD or kj_Commands[BufferId] == kj_ADDON_CHAT_UF then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1 then
                set Data1 = 1
            endif
            call SetUnitUseFood( kj_SELECTED[ChaterId], Data1 > 0 )
        else
            call SetUnitUseFood( kj_SELECTED[ChaterId], true )
        endif
    endif
    
    
    
    // SETUNIT Color
    if kj_Commands[BufferId] == kj_ADDON_CHAT_COLOR then
        if BufferSize == 2 then
            call SetUnitColor( kj_SELECTED[ChaterId], ColorNameToColorKJ(kj_Commands[BufferId+1]) )
        endif
    endif
    
    // CREATE UNIT SECOND TAKE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_XY or kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_XY2 or kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_XY3 then
        if kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_XY3 then
            set RealData3 = 270.0
        else
            set RealData3 = GetRandomDirectionDeg()
        endif
        
        if BufferSize == 4 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            call CreateUnitKJ( Chater, UnitId(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, 1 )
        elseif BufferSize == 5 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set Data1 = S2I(kj_Commands[BufferId+4])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            call CreateUnitKJ( Chater, UnitId(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, Data1 )
        elseif BufferSize == 6 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set Data1 = S2I(kj_Commands[BufferId+4])
            set Data2 = S2I(kj_Commands[BufferId+5])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call CreateUnitKJ( TargetPlayer, UnitId(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, Data1 )
        endif
    endif
    // SPAWNXY ANALOG CREATEXY FOR RAW-CODE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN_XY or kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN_XY2 or kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN_XY3 then
        if kj_Commands[BufferId] == kj_ADDON_CHAT_SPAWN_XY3 then
            set RealData3 = 270.0
        else
            set RealData3 = GetRandomDirectionDeg()
        endif
        
        if BufferSize == 4 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            call CreateUnitKJ( Chater, Raw2IntKJ(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, 1 )
        elseif BufferSize == 5 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set Data1 = S2I(kj_Commands[BufferId+4])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            call CreateUnitKJ( Chater, Raw2IntKJ(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, Data1 )
        elseif BufferSize == 6 then
            set RealData1 = kjSFX(S2R(kj_Commands[BufferId+2]))
            set RealData2 = kjSFY(S2R(kj_Commands[BufferId+3]))
            set Data1 = S2I(kj_Commands[BufferId+4])
            set Data2 = S2I(kj_Commands[BufferId+5])
            if Data1 < 1 or Data1 > 1000 then
                set Data1 = 1
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data2)
            call CreateUnitKJ( TargetPlayer, Raw2IntKJ(kj_Commands[BufferId+1]), RealData1, RealData2, RealData3, Data1 )
        endif
    endif
    // CREATE UNIT END
    
    // GIVE ITEM FOR HERO
    if kj_Commands[BufferId] == kj_ADDON_CHAT_GIVE_ITEM or kj_Commands[BufferId] == kj_ADDON_CHAT_GIVE_ITEM2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            call GiveItemForHeroKJ( kj_SELECTED[ChaterId], Data1, -1, -1 )
        elseif BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data2 < -1 or Data2 > 5 then
                set Data2 = -1
            endif
            call GiveItemForHeroKJ( kj_SELECTED[ChaterId], Data1, Data2, -1 )
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data2 < -1 or Data2 > 5 then
                set Data2 = -1
            endif
            if Data3 < -1 or Data3 > 10000 then
                set Data3 = 1
            endif
            call GiveItemForHeroKJ( kj_SELECTED[ChaterId], Data1, Data2, Data3 )
        endif
        call LastErrorClearKJ()
    endif
    
    // GOLD FOR GOLDMINE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_GOLDMINEGOLD or kj_Commands[BufferId] == kj_ADDON_CHAT_GOLDMINEGOLD2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 1 or Data1 > 1000000 then
                set Data1 = 500
            endif
            call AddResourceAmount( kj_SELECTED[ChaterId], Data1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1000000 then
                set Data1 = 500
            endif
            if kj_Commands[BufferId+2] == kj_ADDON_CHAT_PLUS then
                call AddResourceAmount( kj_SELECTED[ChaterId], Data1 )
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_MINUS then
                if GetResourceAmount(kj_SELECTED[ChaterId]) < Data1 then
                    call SetResourceAmount( kj_SELECTED[ChaterId], 0 )
                else
                    call SetResourceAmount( kj_SELECTED[ChaterId], GetResourceAmount( kj_SELECTED[ChaterId]) - Data1 )
                endif
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_EQUAL then
                call SetResourceAmount( kj_SELECTED[ChaterId], Data1 )
            endif
        endif
    endif
    // GOLD FOR GOLDMINE END
    
    // GET POSITION 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_POSITION or kj_Commands[BufferId] == kj_ADDON_CHAT_POSITION2 then
        call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cff03fc05Current position of selected unit: |cfffc0303[|cffe4b216 " + R2S(GetWidgetX(kj_SELECTED[ChaterId])) + " |cfffc0303] , [|cffe4b216 " + R2S(GetWidgetY(kj_SELECTED[ChaterId])) + " |cfffc0303]|r" )
    endif 
    // GET POSITION END
    
    // SET LIFE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_LIFE or kj_Commands[BufferId] == kj_ADDON_CHAT_HEALTH or kj_Commands[BufferId] == kj_ADDON_CHAT_H then
        if BufferSize == 2 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            call UnitLifeKJ(kj_SELECTED[ChaterId], RealData1 )
        elseif BufferSize == 3 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            if kj_Commands[BufferId+2] == kj_ADDON_CHAT_PLUS then
                call UnitLifeKJ(kj_SELECTED[ChaterId], GetWidgetLife(kj_SELECTED[ChaterId]) + RealData1 )
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_MINUS then
                call UnitLifeKJ(kj_SELECTED[ChaterId], GetWidgetLife(kj_SELECTED[ChaterId]) - RealData1 )
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_EQUAL then
                call UnitLifeKJ(kj_SELECTED[ChaterId], RealData1 )
            endif
        endif
    endif
    
    // SET MANA
    if kj_Commands[BufferId] == kj_ADDON_CHAT_MANA or kj_Commands[BufferId] == kj_ADDON_CHAT_M then
        if BufferSize == 2 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            call UnitManaKJ(kj_SELECTED[ChaterId], RealData1 )
        elseif BufferSize == 3 then
            set RealData1 = S2R(kj_Commands[BufferId+1])
            if kj_Commands[BufferId+2] == kj_ADDON_CHAT_PLUS then
                call UnitManaKJ(kj_SELECTED[ChaterId], GetUnitState( kj_SELECTED[ChaterId], UNIT_STATE_MANA ) + RealData1 )
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_MINUS then
                call UnitManaKJ(kj_SELECTED[ChaterId], GetUnitState( kj_SELECTED[ChaterId], UNIT_STATE_MANA ) - RealData1 )
            elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_EQUAL then
                call UnitManaKJ(kj_SELECTED[ChaterId], RealData1 )
            endif
        endif
    endif
    
    // SET NO FOODER
    if kj_Commands[BufferId] == kj_ADDON_CHAT_NO_FOOD or kj_Commands[BufferId] == kj_ADDON_CHAT_NO_FOOD2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1 then
                set Data1 = 0
            endif
            set kj_NO_FOOD_USED[ChaterId] = Data1 > 0
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > 1 then
                set Data1 = 0
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set kj_NO_FOOD_USED[Data2] = Data1 > 0
        endif
    endif
    // END SET NOFOODER
    
    // ABILITY ADD / DEL / CHANGE
    if kj_Commands[BufferId] == kj_ADDON_CHAT_ABILITY or kj_Commands[BufferId] == kj_ADDON_CHAT_ABILITY2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' or Data1 <= 'zzzz' then
                call UnitAddAbility( kj_SELECTED[ChaterId], Data1 )
            endif
        elseif BufferSize == 3 or BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            if Data1 >= '0000' or Data1 <= 'zzzz' then
                if kj_Commands[BufferId+2] == kj_ADDON_CHAT_DEL or kj_Commands[BufferId+2] == kj_ADDON_CHAT_DELETE then
                    call UnitRemoveAbility(kj_SELECTED[ChaterId], Data1 ) 
                elseif kj_Commands[BufferId+2] == kj_ADDON_CHAT_CHANGE or kj_Commands[BufferId+2] == kj_ADDON_CHAT_CHANGE2 then
                    set Data2 = S2I(kj_Commands[BufferId+3])
                    if Data2 < 0 or Data2 > 1000 then
                        set Data2 = 0
                    endif
                    call SetUnitAbilityLevel( kj_SELECTED[ChaterId], Data1, Data2 )
                else
                    set Data2 = S2I(kj_Commands[BufferId+2])
                    if Data2 < 0 or Data2 > 1000 then
                        set Data2 = 0
                    endif
                    call UnitAddAbility( kj_SELECTED[ChaterId], Data1 )
                    call SetUnitAbilityLevel( kj_SELECTED[ChaterId], Data1, Data2 )
                endif
            endif
        endif
    endif
    // END ABILITY ADD / DEL / CHANGE
    
    // SET OWNER
    if kj_Commands[BufferId] == kj_ADDON_CHAT_OWNER or kj_Commands[BufferId] == kj_ADDON_CHAT_OWN then
        if BufferSize == 2 then
            set Data1 = ColorNameToIntKJ(kj_Commands[BufferId+1])
            set TargetPlayer = Player(Data1)
            call SetUnitOwner( kj_SELECTED[ChaterId], TargetPlayer, true )
        endif
    endif
    // END SET OWNER
    
    // CREATE ITEM IN POSITION OF UNIT 
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_ITEM or kj_Commands[BufferId] == kj_ADDON_CHAT_CREATE_ITEM2 then
        if BufferSize == 2 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            call CreateItemKJ(Data1, GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), 1, -1 )
        elseif BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data2 < 1 or Data2 > 1000 then
                set Data2 = 1
            endif
            call CreateItemKJ(Data1, GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), Data2, -1 )
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data2 < 1 or Data2 > 1000 then
                set Data2 = 1
            endif
            if Data3 < -1 or Data3 > 10000 then
                set Data3 = -1
            endif
            call CreateItemKJ(Data1, GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), Data2, Data3 )
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_PLAYER_COLOR or kj_Commands[BufferId] == kj_ADDON_CHAT_PLAYER_COLOR2 then
        if BufferSize == 2 then
            call SetPlayerColorKJ( Chater, ColorNameToColorKJ(kj_Commands[BufferId+1]) )
        elseif BufferSize == 3 then
            call SetPlayerColorKJ( Player(ColorNameToIntKJ(kj_Commands[BufferId+1])), ColorNameToColorKJ(kj_Commands[BufferId+2]))
        endif
    endif
    
    // Set player's Researches
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_RESEARCH  or kj_Commands[BufferId] == kj_ADDON_CHAT_RESEARCH2 then
        if BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= 0 and Data2 <= 1000 then
                call SetPlayerTechResearched( Chater, Data1, Data2 )
            endif
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= 0 and Data2 <= 1000 and Data3 >= 0 and Data3 <= PLAYER_NEUTRAL_PASSIVE then
                call SetPlayerTechResearched( Player(Data3), Data1, Data2 )
            endif
        endif
    endif
    
    // call SetPlayerAbilityAvailable(
    
    // Research Awaible or Limit for are the Reseaches or are the Units
    if kj_Commands[BufferId] == kj_ADDON_CHAT_RESEARCH_LIMIT  or kj_Commands[BufferId] == kj_ADDON_CHAT_RESEARCH_LIMIT2 then
        if BufferSize == 3 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= -1 and Data2 <= 1000 then
                call SetPlayerTechMaxAllowed( Chater, Data1, Data2 )
            endif
        elseif BufferSize == 4 then
            set Data1 = Raw2IntKJ(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data3 = S2I(kj_Commands[BufferId+3])
            if Data1 >= '0000' and Data1 <= 'zzzz' and Data2 >= -1 and Data2 <= 1000 and Data3 >= 0 and Data3 <= PLAYER_NEUTRAL_PASSIVE then
                call SetPlayerTechMaxAllowed( Player(Data3), Data1, Data2 )
            endif
        endif
    endif
    
    // BOUNTY For player's units
    if kj_Commands[BufferId] == kj_ADDON_CHAT_BOUNTY or kj_Commands[BufferId] == kj_ADDON_CHAT_BOUNTY2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 1 then
                set Data1 = 0
            endif
            call SetPlayerState(Chater, PLAYER_STATE_GIVES_BOUNTY, Data1 )
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < 0 or Data1 > PLAYER_NEUTRAL_PASSIVE then
                set Data1 = 0
            endif
            if Data2 < 0 or Data2 > 1 then
                set Data2 = 0
            endif
            set TargetPlayer = Player(Data1)
            call SetPlayerState(TargetPlayer, PLAYER_STATE_GIVES_BOUNTY, Data2 )
        endif
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_TREE then
        if BufferSize == 2 then
            call CreateSuperTreeKJ( GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), GetTreeeTypeByNameKJ(kj_Commands[BufferId+1]) )
        else
           call CreateSuperTreeKJ( GetWidgetX(kj_SELECTED[ChaterId]), GetWidgetY(kj_SELECTED[ChaterId]), 'LTlt' )
        endif
    endif
    
    // PACTS OF ALLY // -pact red red a+
    if kj_Commands[BufferId] == kj_ADDON_CHAT_ALLY or kj_Commands[BufferId] == kj_ADDON_CHAT_ALLY2 then
        if BufferSize == 4 then
            set Data1 = ColorNameToIntKJ(kj_Commands[BufferId+1])
            set Data2 = ColorNameToIntKJ(kj_Commands[BufferId+2])
            
            // Fix Player's Corrupting
            if Data1 == Data2 then
                if Data2 == 0 then
                    set Data2 = 1
                elseif Data2 == PLAYER_NEUTRAL_PASSIVE then
                    set Data2 = bj_PLAYER_NEUTRAL_EXTRA
                else
                    if GetRandomInt(0,1) > 0 then
                        set Data2 = Data2 + 1
                    else
                        set Data2 = Data2 - 1
                    endif
                endif
            endif
            
            set SourcePlayer = Player(Data1)
            set TargetPlayer = Player(Data2)
            
            if kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_ALLY then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_ALLIED_VISION )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_ALLIED_VISION )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_ALLY_PLUS then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_ALLIED_ADVUNITS )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_ALLIED_ADVUNITS )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_NEUTRAL then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_NEUTRAL )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_NEUTRAL )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_NEUTRAL_PLUS then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_NEUTRAL_VISION )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_NEUTRAL_VISION )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_ENEMY then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_UNALLIED )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_UNALLIED )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_ENEMY_PLUS then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_UNALLIED )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_UNALLIED_VISION )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_FRIEND then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_ALLIED )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_ALLIED )
            elseif kj_Commands[BufferId+3] == kj_ADDON_CHAT_ALLY_FRIEND_PLUS then
                call SetPlayerAllianceStateBJ( SourcePlayer, TargetPlayer, bj_ALLIANCE_ALLIED_UNITS )
                call SetPlayerAllianceStateBJ( TargetPlayer, SourcePlayer, bj_ALLIANCE_ALLIED_UNITS )
            endif
            
        endif
    endif
    // RESTE ALL ABILITY CDs
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_RESETCD or kj_Commands[BufferId] == kj_ADDON_CHAT_RESETCD2 then
        call UnitResetCooldown( kj_SELECTED[ChaterId] )
    endif
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_UNIT_USER_DATA or kj_Commands[BufferId] == kj_ADDON_CHAT_UNIT_USER_DATA2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            call SetUnitUserData( kj_SELECTED[ChaterId], Data1 )
        else
            call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffff9900UNIT USER DATA:|r |cff03f003[|cfffcfc03 " + I2S(GetUnitUserData(kj_SELECTED[ChaterId])) + " |cff03f003]|r" )
        endif
    endif
    // SET ITEM CHARGES IN SLOT YES?
    
    if kj_Commands[BufferId] == kj_ADDON_CHAT_SET_ITEM_CHARGES or kj_Commands[BufferId] == kj_ADDON_CHAT_SET_ITEM_CHARGES2 then
        if BufferSize == 3 then
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 5 then
                set Data1 = 0
            endif
            if Data2 < 0 or Data2 > 10000 then
                set Data2 = 0
            endif
            if UnitItemSlotIsOccupiedKJ( kj_SELECTED[ChaterId], Data1 ) then
                call SetItemCharges( UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ), Data2 )
            endif 
        endif
    endif
    
    // Set progress for buldings
    if  kj_Commands[BufferId] == kj_ADDON_CHAT_PROGRESS or kj_Commands[BufferId] == kj_ADDON_CHAT_UPGRADE then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 99 then
                set Data1 = 99
            endif
            if kj_Commands[BufferId] == kj_ADDON_CHAT_PROGRESS then
                call UnitSetConstructionProgress( kj_SELECTED[ChaterId], Data1 )
            elseif kj_Commands[BufferId] == kj_ADDON_CHAT_UPGRADE then
                call UnitSetUpgradeProgress( kj_SELECTED[ChaterId], Data1 )
            endif
        endif
    endif
    
    // ITEM USER DATA
    if kj_Commands[BufferId] == kj_ADDON_CHAT_ITEM_USER_DATA or kj_Commands[BufferId] == kj_ADDON_CHAT_ITEM_USER_DATA2 then
        
		if BufferSize == 4 then
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data1 = S2I(kj_Commands[BufferId+1])
			set Data3 = S2I(kj_Commands[BufferId+3])
            if Data1 < 0 or Data1 > 5 then
                set Data1 = 0
            endif
			if Data3 < 0 or Data3 > bj_MAX_PLAYERS then
                set Data3 = 0
            endif
            if UnitItemSlotIsOccupiedKJ( kj_SELECTED[ChaterId], Data1 ) then
                call SetItemUserData( UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ), Data2 )
				call SetItemPlayer( UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ), Player(Data3), true )
            endif
		elseif BufferSize == 3 then
            set Data2 = S2I(kj_Commands[BufferId+2])
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 5 then
                set Data1 = 0
            endif
            if UnitItemSlotIsOccupiedKJ( kj_SELECTED[ChaterId], Data1 ) then
                call SetItemUserData( UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ), Data2 )
            endif
        elseif BufferSize == 2 then 
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < 0 or Data1 > 5 then
                set Data1 = 0
            endif
            if UnitItemSlotIsOccupiedKJ( kj_SELECTED[ChaterId], Data1 ) then
                call DisplayTimedTextToPlayer( Chater, 0., 0., 20., "|cffff9900UNIT USER DATA:|r |cff03f003[|cfffcfc03 " + I2S( GetItemUserData( UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ) ) ) + " |cff03f003]|r |cffffcc00PID:| < " +I2S(GetPlayerId(GetItemPlayer(UnitItemInSlot( kj_SELECTED[ChaterId], Data1 ))))+" >" )
            endif    
        endif
    endif
    
    // SET PROGRESSER 
    if kj_Commands[BufferId] == kj_ADDON_CHAT_AUTOPROGRESS or kj_Commands[BufferId] == kj_ADDON_CHAT_AUTOPROGRESS2 then
        if BufferSize == 2 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            if Data1 < kj_AUTO_PROGRESS_MIN_STEP or Data1 > kj_AUTO_PROGRESS_MAX_STEP then
                set Data1 = 0
            endif
            set kj_AUTO_PROGRESS[ChaterId]      = Data1 > kj_AUTO_PROGRESS_MIN_STEP
            set kj_AUTO_PROGRESS_STEP[ChaterId] = Data1
        elseif BufferSize == 3 then
            set Data1 = S2I(kj_Commands[BufferId+1])
            set Data2 = S2I(kj_Commands[BufferId+2])
            if Data1 < kj_AUTO_PROGRESS_MIN_STEP or Data1 > kj_AUTO_PROGRESS_MAX_STEP then
                set Data1 = 0
            endif
            if Data2 < 0 or Data2 > PLAYER_NEUTRAL_PASSIVE then
                set Data2 = 0
            endif
            set kj_AUTO_PROGRESS[Data2]      = Data1 > kj_AUTO_PROGRESS_MIN_STEP
            set kj_AUTO_PROGRESS_STEP[Data2] = Data1
        endif
    endif
    
    set chatStr         = null
    set Chater          = null
    set TargetPlayer    = null
    set SourcePlayer    = null
endfunction

function ChatCommandsPlusKJ takes nothing returns nothing
    local string    chatStr     = GetEventPlayerChatString()
    local player    Chater      = GetTriggerPlayer()
    local integer   ChaterId    = GetPlayerId( Chater )
    local integer   Data1       = 0
    local integer   Data2       = 0
    local integer   Data3       = 0
    local real      RealData1   = 0.
    local real      RealData2   = 0.
    local real      RealData3   = 0.
    local player    TargetPlayer= null
    local player    SourcePlayer= null
    // System local parrametrs
    
    local integer BufferId      = kj_BufferCommands * ChaterId  
    local integer BufferSize    = 0
    
    call ParseCommandsKJ(SubString(chatStr,1,StringLength(chatStr)), ChaterId )
    set BufferSize    = kj_BufferSize[ChaterId]
    
	if kj_Commands[BufferId] == "ai" or kj_Commands[BufferId] == "playerstartai" or kj_Commands[BufferId] == "psai" then
		if BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+2])
			if Data1 < 0 or Data1 > bj_MAX_PLAYERS then
				set Data1 = 0
			endif
			call StartMeleeAI( Player(Data1), kj_Commands[BufferId+1])
		endif
	endif
	
	if kj_Commands[BufferId] == "cai" or kj_Commands[BufferId] == "playerstartcampaignai" or kj_Commands[BufferId] == "pscai" then
		if BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+2])
			if Data1 < 0 or Data1 > bj_MAX_PLAYERS then
				set Data1 = 0
			endif
			call StartCampaignAI( Player(Data1), kj_Commands[BufferId+1])
		endif
	endif
	
	if kj_Commands[BufferId] == "pai" or kj_Commands[BufferId] == "playerpasueai" or kj_Commands[BufferId] == "ppai" then
		if BufferSize == 3 then
			set Data1 = S2I(kj_Commands[BufferId+2])
			set Data2 = S2I(kj_Commands[BufferId+1])
				if Data1 < 0 or Data1 > bj_MAX_PLAYERS then
					set Data1 = 0
				endif
			call PauseCompAI(Player(Data1), Data2 > 0 )
		endif
	endif
	
	if kj_Commands[BufferId] == "cheat" or kj_Commands[BufferId] == "valve" or kj_Commands[BufferId] == "blizzard" then
		if BufferSize == 2 then 
			call Cheat(kj_Commands[BufferId+1])
		endif
	endif
	
	if kj_Commands[BufferId] == "addeffect" or kj_Commands[BufferId] == "aff" then
		if BufferSize == 5 then
			set RealData1 = S2R(kj_Commands[BufferId+2])
			set RealData2 = S2R(kj_Commands[BufferId+3])
			call AdjustEffectXYKJ( kj_Commands[BufferId+1], kjSFX( RealData1), kjSFY(RealData2), kj_Commands[BufferId+4] )
		endif
	endif
	
	if kj_Commands[BufferId] == "removeeffect" or kj_Commands[BufferId] == "reff" then
		if BufferSize == 2 then
			call RemoveEffectByNameKJ(kj_Commands[BufferId+1])
		endif
	endif
	
	if kj_Commands[BufferId] == "attach" or kj_Commands[BufferId] == "att" then 
		if BufferSize == 4 then
			if kj_Commands[BufferId+1] == "[auto]" then
				call AttachEffectAtUnitKJ( null, kj_Commands[BufferId+2], kj_Commands[BufferId+3], true,  ChaterId )
			else
				call AttachEffectAtUnitKJ( kj_Commands[BufferId+1], kj_Commands[BufferId+2], kj_Commands[BufferId+3], false, ChaterId )
			endif
		endif
	endif
	
    set chatStr = null

    set chatStr         = null
    set Chater          = null
    set TargetPlayer    = null
    set SourcePlayer    = null
endfunction

function TriggerRegisterChatCommandsKJ takes nothing returns nothing
    local   integer ptrIndex        = 0
    local   integer ptrFinal        = bj_MAX_PLAYERS
    
    set     kj_ADDON_TRIGGER_CHATCOMMANDS   	= CreateTrigger( )
	set 	kj_ADDON_TRIGGER_CHATCOMMANDS_PLUS 	= CreateTrigger()
	
    call    TriggerAddAction( kj_ADDON_TRIGGER_CHATCOMMANDS, 	  function ChatCommandsKJ )
    call    TriggerAddAction( kj_ADDON_TRIGGER_CHATCOMMANDS_PLUS, function ChatCommandsPlusKJ )
	
    loop
        call TriggerRegisterPlayerChatEvent( kj_ADDON_TRIGGER_CHATCOMMANDS, Player( ptrIndex ), "-", false )
		call TriggerRegisterPlayerChatEvent( kj_ADDON_TRIGGER_CHATCOMMANDS_PLUS, Player( ptrIndex ), "+", false )
        set ptrIndex = ptrIndex + 1
    exitwhen ptrIndex == ptrFinal
    endloop
    
endfunction


function InitAddonKJ  takes nothing returns nothing
    call InitCharsKJ()
    call KJDefaultValues()
    call InitAutoProgressorKJ()
    call InitSelectorKJ()
    call InitNoFooderKJ()
    call TriggerRegisterChatCommandsKJ()
endfunction