// Sound library for patch 1.26+ until 1.32
library Soudator requires Timeration, General
	globals
		constant integer PLAYLIST_MAX_TRACKS = 100
	endglobals

	struct playlist
		string 		array 	track			[PLAYLIST_MAX_TRACKS]
		integer 	 		trackId			= 0
		integer				trackFin 		= 0
		integer 	array 	trackDuration 	[PLAYLIST_MAX_TRACKS]
		countdown			clock 			= -1

		method destroy takes nothing returns nothing
			call this.clock.pause()
			call this.clock.destroy()
			set this.clock = -1 
			set this.trackId 	= 0
			loop
				set this.track[this.trackId] 			= null
				set this.trackDuration[this.trackId] 	= 0
				set this.trackId = this.trackId + 1
			exitwhen this.trackId == this.trackFin
			endloop
			set this.trackId 	= 0
			set this.trackFin 	= 0

			call this.deallocate()
		endmethod

		method destroyex takes nothing returns nothing
			call this.destroy()
			call StopMusic(false)
		endmethod

		method play takes nothing returns nothing
			call PlayMusic( this.track[this.trackId])
		endmethod

		method playById takes integer id returns nothing
			set this.trackId = lims(id,0,this.trackFin-1)
			call PlayMusic( this.track[this.trackId])
		endmethod


		method stop takes nothing returns nothing
			call StopMusic(false)
		endmethod

		static method callback takes nothing returns nothing
			local thistype this = countdown.getDataFromExpired()
			if this.clock.tick == this.clock.alarm then
				call this.clock.refresh()
				set this.clock.alarm = this.trackDuration[this.trackId] 
				call this.stop()
				call this.play()
			else
				set this.clock.tick = this.clock.tick + 1
			endif
		endmethod

		method add takes string musFile, real seconds returns integer
			if this.trackFin < PLAYLIST_MAX_TRACKS then

				set this.track[this.trackFin] 			= musFile
				set this.trackDuration[this.trackFin] 	= R2I(seconds) * 10 // 10 times per 1n sec
				set this.trackFin = this.trackFin + 1
				
				return this.trackFin - 1
			endif
			return 0
		endmethod

		method setrandom takes nothing returns nothing
			set this.trackId = GetRandomInt(0,this.trackFin-1)
		endmethod

		method settrack takes integer id returns nothing
			set this.trackId = lims(id,0,this.trackFin-1)
		endmethod

		method stoplist takes nothing returns nothing
			call this.clock.pause()
			call this.stop()	
		endmethod

		method startlist takes nothing returns nothing
			call this.play()
			call this.clock.refresh()

			set this.clock.alarm = this.trackDuration[this.trackId] 

			call this.clock.push( this, 0.1, function thistype.callback )
		endmethod 

		static method create takes nothing returns thistype
			local thistype this = thistype.allocate()
			set clock = countdown.create()
			return this
		endmethod
	endstruct
endlibrary