library Timeration requires General

	struct countdown 
		timer 	dial 	= null
		integer count	= 0
		integer account = 0
		integer tick 	= 0
		integer alarm 	= 0

		integer hid 		= 0
		boolean onRepeat 	= false
		real 	period 		= 0.

		method destroy takes nothing returns nothing
			call FlushChildHashtable( HT, this.hid )
			call DestroyTimer		( this.dial )
			
			set this.dial 		= null
			set this.count 		= 0
			set this.account 	= 0
			set this.tick		= 0
			set this.alarm		= 0
			set this.hid 		= 0
			
			call this.deallocate()
		endmethod

		method refresh takes nothing returns nothing
			set this.count 		= 0
			set this.account 	= 0
			set this.tick		= 0
			set this.alarm		= 0
		endmethod

		method launch takes real inv, boolean isRepeat, code src returns nothing
			set this.period 	= inv
			set this.onRepeat 	= isRepeat

			call TimerStart( this.dial, inv, isRepeat, src )
		endmethod

		method putData takes integer data returns nothing
			call SaveInteger( HT, this.hid, 0, data )
		endmethod

		method putDataTo takes integer addr, integer data returns nothing
			if addr > 0 then
				call SaveInteger( HT, this.hid, addr, data )
			endif
		endmethod

		method getDataFrom takes integer addr returns integer
			return LoadInteger( HT, this.hid, addr )
		endmethod


		method getData takes nothing returns integer
			return LoadInteger( HT, this.hid, 0 )
		endmethod
		
		static method getDataFromExpired takes nothing returns integer
			return LoadInteger( HT, GetHandleId(GetExpiredTimer()), 0 )
		endmethod

		method pause takes nothing returns nothing
			call PauseTimer(this.dial)
		endmethod

		method resume takes nothing  returns nothing
			call ResumeTimer(this.dial)
		endmethod

		method restart takes code src returns nothing
			call TimerStart( this.dial, this.period, this.onRepeat, src )
		endmethod

		method push takes integer data, real inv, code src returns nothing
			local boolean 	isRepeat = inv > 0.
			local real 		period	 =  inv * ( 1.0 - B2R(not isRepeat) * 2.0 )

			set this.period 	= period
			set this.onRepeat 	= isRepeat
			if data == -1 then
				call SaveInteger( HT, this.hid, 0, this )
			else
				call SaveInteger( HT, this.hid, 0, data )
			endif
			call TimerStart	( this.dial, inv, isRepeat, src )
		endmethod

		static method create takes nothing returns thistype
			local thistype this = thistype.allocate()
			set this.dial = CreateTimer()
			set this.hid  = GetHandleId(this.dial)
			return this
		endmethod
	endstruct

	struct limb

	endstruct
endlibrary
