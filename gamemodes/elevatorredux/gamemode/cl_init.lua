include( 'shared.lua' )

local function ConnectToServer( ip, port )

	print(ip, port)
	LocalPlayer():ConCommand( string.format("disconnect; connect %s:%d", ip, tonumber(port)) )

end

hook.Add( "InitPostEntity", "PromptForTower", function()

	Derma_Query( "Elevator Redux is available on our servers.\n\nDo you wish to join the server?",
		"Yes", function()
			ConnectToServer( "elevatorredux.ddns.net", 27015 )
		end,
		"No", function() end
	)

end )