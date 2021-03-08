#guard general

namespace General /* BEGIN NAMESPACE GENERAL */
	
	private playercolor thebrush 	= null;
	private location 	terrlocio 	= null;

	/* private player 		whichbrush	= null */

	private void ColorHim() {
		SetUnitColor( GetEnumUnit(), thebrush )
	}

	float GetUnitZ(unit u){ MoveLocation( terrlocio, GetWidgetX(u), GetWidgetY(u) ); return GetLocationZ(terrlocio) };

	void ColorUnits(player which, playercolor what){
		group g = CreateGroup();
		GroupEnumUnitsOfPlayer( g, which, nil );
		thebrush = what;
		ForGroup(g, __api ColorHim );
		GroupClear(g);
		DestroyGroup(g);
		g = nil
	};

	enum (safepointloc) {
		spl_map, spl_extra, spl_extra2, spl_extra3, spl_extra4, spl_extra5
	}

	unit 		pool 		= nil
	group 		squad 		= nil
	hashtable	xash 		= nil
	rect 		world 		= nil
	
	float 		map_mxx			[]
	float 		map_mnx			[]
	float		map_mxy			[]
	float		map_mny			[]

	#define MI(a,b) = ModuloInteger(a,b)

	float sfx(int id, float x) {
		if x > id:map_mxx {
			return id:map_mxx
		}elseif x < id:map_mnx {
			return id:map_mnx 
		}
		return x
	}

	float sfy(int id, float y){
		if y > id:map_mxy {
			return id:map_mxy
		}elseif y < id:map_mny {
			return id:map_mny 
		}
		return y
	}

	int B2I( bool b ){
		if b { return 1}
		return 0
	}

	bool I2B(int i) {
		return MI(i,2) > 0
	}

	wchar_t B2S(bool b) {
		if b {return "true"};
		return "false"
	};

	float B2F(bool b){
		if b { return 1.0};
		return 0.0
	};

	#define B2R(r) = B2F(r);

	int lim(int v, int min, int max){
		if v > max {
			return max
		}
		elseif v < min
		{
			return min
		}
		return v
	}

	int limx(int v, int max){
		if v > max {return max}
		return v
	}

	int limm( int v, int min){
		if v < min { return min}
		return v
	}

	float flim( float v, float min, float max){
		if v > max {
			return max
		}
		elseif v < min
		{
			return min
		}
		return v
	}

	float flimx(float v, float max){
		if v > max {return max}
		return v
	} 

	float flimm( float v, float min){
		if v < min { return min}
		return v
	}

	void setSafePointLocation(int id, rect wRect){
		id:map_mxx = GetRectMaxX( wRect ) + 50.0
		id:map_mnx = GetRectMinX( wRect ) - 50.0
		id:map_mxy = GetRectMaxY( wRect ) + 50.0
		id:map_mny = GetRectMinY( wRect ) - 50.0
	}

	#define SPL(id,rct) =  setSafePointLocation(id,rct) /* For what it and why? */

	void InitGeneral(){
		squad 		= CreateGroup()
		xash   		= InitHashtable()
		world 		= GetWorldBounds()
		terrlocio	= Location(0.,0.)

		map_mxx[spl_map]	= GetRectMaxX( world ) + 50.0
		map_mnx[spl_map]  	= GetRectMinX( world ) - 50.0
		map_mxy[spl_map] 	= GetRectMaxY( world ) + 50.0
		map_mny[spl_map]  	= GetRectMinY( world ) - 50.0



	}

endnamespace /* END NAMESPACE GENERAL */