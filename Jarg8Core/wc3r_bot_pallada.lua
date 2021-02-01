GUIDE = {
	name = "Паллада",
	shortname = "Лада",
	isActive = false,
	waitInterval = 10.50
}

GUIDE.AI = {
	tick = 0.0,
}

GUIDE.AI.Scanning = function()
	if GUIDE.AI.tick > 0 then
		GUIDE.AI.tick = GUIDE.AI.tick - 1
	else
		-- Здесь должен был быть код, но его нет.
	end
end

GUIDE.Text = function(...)
	local Text, toPlayer = ...
	if toPlayer then
		if GetLocalPlayer() == toPlayer() then
			BlzDisplayChatMessage( GUIDE.PLAYER, 1, Text )
		end
	else
		BlzDisplayChatMessage( GUIDE.PLAYER, 1, Text )
	end
end


GUIDE.Init = function(attachPlayer)
	SetPlayerName( attachPlayer, GUIDE.name )
	-- [Здесь должно быть что-то ещё...] 
end