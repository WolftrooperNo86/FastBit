--> Variables <--
local rStep = 0.0000000000

local gStep = 0.0000000000

local bStep = 0.0000000000

local colSel = 1

local lockState = 1

local dlgSetup = Dialog{ title = "FastBit - Setup" }

local dlgRGB = Dialog{ title = "FastBit" }



--> Get sprite <--
actSpr = app.activeSprite

if not actSpr then

	return app.alert{

		title = "FastBit",

		text = {

			"ERROR: No sprites open!",

			"FIX: Open a sprite, then re-run FastBit."

		}
	
	}

end



--> Get color mode <--
colMode = actSpr.colorMode

if colMode == 1 then

	return app.alert{
	
		title = "FastBit",
		
		text = {
		
			"ERROR: Sprite is in greyscale mode!",
			
			"FIX: Set sprite to index or RGB mode, the re-run FastBit"
		
		}
	}

end



--> Get palette <--
actPal = actSpr.palettes[ 1 ]



--.---------------.--
--| .-----------. |--
--| | FUNCTIONS | |--
--| '-----------' |--
--'---------------'--



		------------------
-------> Set fg/bg colors <-------
		------------------
function setColors( thisDlg )

	local dlgData = thisDlg.data

	if colSel == 1 then

		if lockState == 0 then

			actPal:setColor( app.fgColor.index, Color{ r = math.ceil( ( dlgData.r0 + dlgData.r1 + dlgData.r2 + dlgData.r3 + dlgData.r4 + dlgData.r5 + dlgData.r6 + dlgData.r7 + dlgData.r8 ) * rStep ), g = math.ceil( ( dlgData.g0 + dlgData.g1 + dlgData.g2 + dlgData.g3 + dlgData.g4 + dlgData.g5 + dlgData.g6 + dlgData.g7 + dlgData.g8 ) * gStep ), b =  math.ceil( ( dlgData.b0 + dlgData.b1 + dlgData.b2 + dlgData.b3 + dlgData.b4 + dlgData.b5 + dlgData.b6 + dlgData.b7 + dlgData.b8 ) * bStep ) } )

		end

		app.fgColor = Color{ r = math.ceil( ( dlgData.r0 + dlgData.r1 + dlgData.r2 + dlgData.r3 + dlgData.r4 + dlgData.r5 + dlgData.r6 + dlgData.r7 + dlgData.r8 ) * rStep ), g = math.ceil( ( dlgData.g0 + dlgData.g1 + dlgData.g2 + dlgData.g3 + dlgData.g4 + dlgData.g5 + dlgData.g6 + dlgData.g7 + dlgData.g8 ) * gStep ), b =  math.ceil( ( dlgData.b0 + dlgData.b1 + dlgData.b2 + dlgData.b3 + dlgData.b4 + dlgData.b5 + dlgData.b6 + dlgData.b7 + dlgData.b8 ) * bStep ) }

	elseif colSel == 0 then

		if lockState == 0 then

			actPal:setColor( app.bgColor.index, Color{ r = math.ceil( ( dlgData.r0 + dlgData.r1 + dlgData.r2 + dlgData.r3 + dlgData.r4 + dlgData.r5 + dlgData.r6 + dlgData.r7 + dlgData.r8 ) * rStep ), g = math.ceil( ( dlgData.g0 + dlgData.g1 + dlgData.g2 + dlgData.g3 + dlgData.g4 + dlgData.g5 + dlgData.g6 + dlgData.g7 + dlgData.g8 ) * gStep ), b =  math.ceil( ( dlgData.b0 + dlgData.b1 + dlgData.b2 + dlgData.b3 + dlgData.b4 + dlgData.b5 + dlgData.b6 + dlgData.b7 + dlgData.b8 ) * bStep ) } )

		end

		app.bgColor = Color{ r = math.ceil( ( dlgData.r0 + dlgData.r1 + dlgData.r2 + dlgData.r3 + dlgData.r4 + dlgData.r5 + dlgData.r6 + dlgData.r7 + dlgData.r8 ) * rStep ), g = math.ceil( ( dlgData.g0 + dlgData.g1 + dlgData.g2 + dlgData.g3 + dlgData.g4 + dlgData.g5 + dlgData.g6 + dlgData.g7 + dlgData.g8 ) * gStep ), b =  math.ceil( ( dlgData.b0 + dlgData.b1 + dlgData.b2 + dlgData.b3 + dlgData.b4 + dlgData.b5 + dlgData.b6 + dlgData.b7 + dlgData.b8 ) * bStep ) }

	end

end



		------------------
-------> Get fg/bg colors <-------
		------------------
function getColors( inCol, thisDlg, thatDlg )

	local dlgData = thisDlg.data


		----------------
-------> RED slider set <-------
		----------------
	if thatDlg.data.rDepth == 8 then

		dlgData.r8 = inCol.red

	elseif thatDlg.data.rDepth == 7 then

		dlgData.r7 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 6 then

		dlgData.r6 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 5 then

		dlgData.r5 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 4 then

		dlgData.r4 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 3 then

		dlgData.r3 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 2 then

		dlgData.r2 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 1 then

		dlgData.r1 = math.floor( inCol.red / rStep )

	elseif thatDlg.data.rDepth == 0 then

		dlgData.r0 = 0

	end



		------------------
-------> GREEN slider set <-------
		------------------
	if thatDlg.data.gDepth == 8 then

		dlgData.g8 = inCol.green

	elseif thatDlg.data.gDepth == 7 then

		dlgData.g7 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 6 then

		dlgData.g6 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 5 then

		dlgData.g5 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 4 then

		dlgData.g4 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 3 then

		dlgData.g3 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 2 then

		dlgData.g2 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 1 then

		dlgData.g1 = math.floor( inCol.green / gStep )

	elseif thatDlg.data.gDepth == 0 then

		dlgData.g0 = 0

	end



		-----------------
-------> BLUE slider set <-------
		-----------------
	if thatDlg.data.bDepth == 8 then

		dlgData.b8 = inCol.blue

	elseif thatDlg.data.bDepth == 7 then

		dlgData.b7 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 6 then

		dlgData.b6 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 5 then

		dlgData.b5 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 4 then

		dlgData.b4 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 3 then

		dlgData.b3 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 2 then

		dlgData.b2 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 1 then

		dlgData.b1 = math.floor( inCol.blue / bStep )

	elseif thatDlg.data.bDepth == 0 then

		dlgData.b0 = 0

	end



	thisDlg.data = dlgData

end

		------------------
-------> Set swatch color <-------
		------------------
function swatchUpdate( thisDlg )

		local dlgData = thisDlg.data

		dlgData.swatch = { Color{ r = math.ceil( ( dlgData.r0 + dlgData.r1 + dlgData.r2 + dlgData.r3 + dlgData.r4 + dlgData.r5 + dlgData.r6 + dlgData.r7 + dlgData.r8 ) * rStep ), g = math.ceil( ( dlgData.g0 + dlgData.g1 + dlgData.g2 + dlgData.g3 + dlgData.g4 + dlgData.g5 + dlgData.g6 + dlgData.g7 + dlgData.g8 ) * gStep ), b =  math.ceil( ( dlgData.b0 + dlgData.b1 + dlgData.b2 + dlgData.b3 + dlgData.b4 + dlgData.b5 + dlgData.b6 + dlgData.b7 + dlgData.b8 ) * bStep ) } }

		thisDlg.data = dlgData

end



		-------------------
-------> Accept user input <-------
		-------------------
function mainOK( thisDlg, thatDlg )

	thisDlg:close()
	
	local newDlg = thatDlg

	newDlg:show{ wait = false }

	thatDlg.bounds = Rectangle{ x = thisDlg.bounds.x, y = thisDlg.bounds.y, width = thatDlg.bounds.width, height = thatDlg.bounds.height }
	


		--------------------------
-------> Modify active RED slider <-------
		--------------------------
	if thisDlg.data.rDepth ~= 8 then

		thatDlg:modify{

			id = "r8",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 7 then

		thatDlg:modify{

			id = "r7",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 6 then

		thatDlg:modify{

			id = "r6",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 5 then

		thatDlg:modify{

			id = "r5",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 4 then

		thatDlg:modify{

			id = "r4",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 3 then

		thatDlg:modify{

			id = "r3",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 2 then

		thatDlg:modify{

			id = "r2",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 1 then

		thatDlg:modify{

			id = "r1",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.rDepth ~= 0 then

		thatDlg:modify{

			id = "r0",

			visible = false,

			enabled = false

		}

	end



		----------------------------
-------> Modify active GREEN slider <-------
		----------------------------
	if thisDlg.data.gDepth ~= 8 then

		thatDlg:modify{

			id = "g8",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 7 then

		thatDlg:modify{

			id = "g7",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 6 then

		thatDlg:modify{

			id = "g6",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 5 then

		thatDlg:modify{

			id = "g5",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 4 then

		thatDlg:modify{

			id = "g4",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 3 then

		thatDlg:modify{

			id = "g3",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 2 then

		thatDlg:modify{

			id = "g2",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 1 then

		thatDlg:modify{

			id = "g1",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.gDepth ~= 0 then

		thatDlg:modify{

			id = "g0",

			visible = false,

			enabled = false

		}

	end



		---------------------------
-------> Modify active BLUE slider <-------
		---------------------------
	if thisDlg.data.bDepth ~= 8 then

		thatDlg:modify{

			id = "b8",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 7 then

		thatDlg:modify{

			id = "b7",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 6 then

		thatDlg:modify{

			id = "b6",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 5 then

		thatDlg:modify{

			id = "b5",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 4 then

		thatDlg:modify{

			id = "b4",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 3 then

		thatDlg:modify{

			id = "b3",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 2 then

		thatDlg:modify{

			id = "b2",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 1 then

		thatDlg:modify{

			id = "b1",

			visible = false,

			enabled = false

		}

	end
	if thisDlg.data.bDepth ~= 0 then

		thatDlg:modify{

			id = "b0",

			visible = false,

			enabled = false

		}

	end



--> Set RED math step <--	
	if thisDlg.data.rDepth == 8 then

		rStep = 1

	elseif thisDlg.data.rDepth == 7 then

		rStep = 254 / 127

	elseif thisDlg.data.rDepth == 6 then

		rStep = 252 / 63

	elseif thisDlg.data.rDepth == 5 then

		rStep = 248 / 31

	elseif thisDlg.data.rDepth == 4 then

		rStep = 255 / 15

	elseif thisDlg.data.rDepth == 3 then

		rStep = 252 / 7

	elseif thisDlg.data.rDepth == 2 then

		rStep = 255 / 3

	elseif thisDlg.data.rDepth == 1 then

		rStep = 255

	elseif thisDlg.data.rDepth == 0 then

		rStep = 0

	end



--> Ste GREEN math step <--
	if thisDlg.data.gDepth == 8 then

		gStep = 1

	elseif thisDlg.data.gDepth == 7 then

		gStep = 254 / 127

	elseif thisDlg.data.gDepth == 6 then

		gStep = 252 / 63

	elseif thisDlg.data.gDepth == 5 then

		gStep = 248 / 31

	elseif thisDlg.data.gDepth == 4 then

		gStep = 255 / 15

	elseif thisDlg.data.gDepth == 3 then

		gStep = 252 / 7

	elseif thisDlg.data.gDepth == 2 then

		gStep = 255 / 3

	elseif thisDlg.data.gDepth == 1 then

		gStep = 255

	elseif thisDlg.data.gDepth == 0 then

		gStep = 0

	end



--> Set BLUE math step <--
	if thisDlg.data.bDepth == 8 then

		bStep = 1

	elseif thisDlg.data.bDepth == 7 then

		bStep = 254 / 127

	elseif thisDlg.data.bDepth == 6 then

		bStep = 252 / 63

	elseif thisDlg.data.bDepth == 5 then

		bStep = 248 / 31

	elseif thisDlg.data.bDepth == 4 then

		bStep = 255 / 15

	elseif thisDlg.data.bDepth == 3 then

		bStep = 252 / 7

	elseif thisDlg.data.bDepth == 2 then

		bStep = 255 / 3

	elseif thisDlg.data.bDepth == 1 then

		bStep = 255

	elseif thisDlg.data.bDepth == 0 then

		bStep = 0

	end

end



--.-------------------------.--
--| .---------------------. |--
--| | Create Setup dialog | |--
--| '---------------------' |--
--'-------------------------'--
dlgSetup:label{ text = "Select number of bits per channel" }

	:newrow()



--> RED depth slider <--
	:slider{

		id = "rDepth",

		label = "Red  ",

		min = 0,

		max = 8,

		value = 0

	}

	:newrow()



--> GREEN depth slider <--
	:slider{

		id = "gDepth",

		label = "Green",

		min = 0,

		max = 8,

		value = 0

	}

	:newrow()



--> BLUE depth slider <--
	:slider{

		id = "bDepth",

		label = "Blue ",

		min = 0,

		max = 8,

		value = 0

	}

	:newrow()

	:label{ text = "*0 means channel is disabled" }

	:newrow()

	:label{}

	:newrow()

	:button{

		text = "OK",

		onclick = function()

			mainOK( dlgSetup, dlgRGB )

		end

	}

dlgSetup:show{ wait = false }



--.-----------------------.--
--| .-------------------. |--
--| | Create RGB dialog | |--
--| '-------------------' |--
--'-----------------------'--
dlgRGB:label{ text = "                     " }

	:newrow()



		------------
-------> RED SLIDER <-------
		------------
	:slider{

		id = "r8",

		label = "Red  ",

		min = 0,

		max = 255,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )
	
		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r7",

		label = "Red  ",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r6",

		label = "Red  ",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r5",

		label = "Red  ",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r4",

		label = "Red  ",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r3",

		label = "Red  ",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r2",

		label = "Red  ",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r1",

		label = "Red  ",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "r0",

		label = "Red  ",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}

	:newrow()



		--------------
-------> GREEN SLIDER <-------
		--------------
	:slider{

		id = "g8",

		label = "Green",

		min = 0,

		max = 255,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g7",

		label = "Green",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g6",

		label = "Green",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g5",

		label = "Green",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g4",

		label = "Green",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g3",

		label = "Green",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g2",

		label = "Green",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g1",

		label = "Green",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "g0",

		label = "Green",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}

	:newrow()



		-------------
-------> BLUE SLIDER <-------
		-------------
	:slider{

		id = "b8",

		label = "Blue ",

		min = 0,

		max = 255,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b7",

		label = "Blue ",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b6",

		label = "Blue ",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b5",

		label = "Blue ",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b4",

		label = "Blue ",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b3",

		label = "Blue ",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b2",

		label = "Blue ",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b1",

		label = "Blue ",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}
	:slider{

		id = "b0",

		label = "Blue ",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end,

		onrelease = function()

			swatchUpdate( dlgRGB )
			setColors( dlgRGB )

		end

	}

	dlgRGB:newrow()

	:check{

		id = "lockState",

		selected = 1,

		text = "Lock palette colors",

		onclick = function()

			if lockState == 1 then

				lockState = 0

			elseif lockState == 0 then

				lockState = 1

			end

		end

	}

	:newrow()


		--------------
-------> Color swatch <-------
		--------------
	:shades{

		id = "swatch",

		mode = "sort",

		colors = { Color{ r = 0, g = 0, b = 0 } }

	}
	
	:newrow()

	:label{}

	:newrow()



		----------------------
-------> Color manage buttons <-------
		----------------------
	:button{

		text = "Get FG Color",

		onclick = function()

			colSel = 1

			getColors( app.fgColor, dlgRGB, dlgSetup )

			swatchUpdate( dlgRGB )

		end

	}

	:newrow()

	:button{

		text = "Get BG Color",

		onclick = function()

			colSel = 0

			getColors( app.bgColor, dlgRGB, dlgSetup )

			swatchUpdate( dlgRGB )

		end

	}