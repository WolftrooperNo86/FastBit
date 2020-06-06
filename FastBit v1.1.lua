--> Variables <--
rStep = 0.0000000000

gStep = 0.0000000000

bStep = 0.0000000000

colSel = 1

lockState = 1



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



		--------------------
-------> Create main dialog <-------
		--------------------
local dlgMain = Dialog{ title = "FastBit - Setup" }

dlgMain:label{ text = "Select channel color depths" }

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

			mainOK()

		end

	}

dlgMain:show{ wait = false }



--.-----------------------.--
--| .-------------------. |--
--| | Create RGB dialog | |--
--| '-------------------' |--
--'-----------------------'--
local dlgRGB = Dialog{ title = "FastBit" }

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

			swatchUpdate()
	
		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r7",

		label = "Red  ",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r6",

		label = "Red  ",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r5",

		label = "Red  ",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r4",

		label = "Red  ",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r3",

		label = "Red  ",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r2",

		label = "Red  ",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r1",

		label = "Red  ",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "r0",

		label = "Red  ",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

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

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g7",

		label = "Green",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g6",

		label = "Green",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g5",

		label = "Green",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g4",

		label = "Green",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g3",

		label = "Green",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g2",

		label = "Green",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g1",

		label = "Green",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "g0",

		label = "Green",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

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

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b7",

		label = "Blue ",

		min = 0,

		max = 127,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b6",

		label = "Blue ",

		min = 0,

		max = 63,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b5",

		label = "Blue ",

		min = 0,

		max = 31,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b4",

		label = "Blue ",

		min = 0,

		max = 15,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b3",

		label = "Blue ",

		min = 0,

		max = 7,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b2",

		label = "Blue ",

		min = 0,

		max = 3,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b1",

		label = "Blue ",

		min = 0,

		max = 1,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

		end

	}
	:slider{

		id = "b0",

		label = "Blue ",

		min = 0,

		max = 0,

		value = 0,

		onchange = function()

			swatchUpdate()

		end,

		onrelease = function()

			swatchUpdate()

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

			getColors( app.fgColor )

		end

	}

	:newrow()

	:button{

		text = "Get BG Color",

		onclick = function()

			colSel = 0

			getColors( app.bgColor )

		end

	}



--.---------------.--
--| .-----------. |--
--| | FUNCTIONS | |--
--| '-----------' |--
--'---------------'--



		------------------
-------> Set fg/bg colors <-------
		------------------
function setColors()

	dataRGB = dlgRGB.data

	if colSel == 1 then

		if lockState == 0 then

			for i = 0, #actPal - 1, 1 do

				if( actPal:getColor( i ).red == app.fgColor.red and actPal:getColor( i ).green == app.fgColor.green and actPal:getColor( i ).blue == app.fgColor.blue ) then

					actPal:setColor( i, Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) } )

				end

			end

		end

		app.fgColor = Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) }

	elseif colSel == 0 then

		if lockState == 0 then

			for i = 0, #actPal - 1, 1 do

				if( actPal:getColor( i ).red == app.bgColor.red and actPal:getColor( i ).green == app.bgColor.green and actPal:getColor( i ).blue == app.bgColor.blue ) then

					actPal:setColor( i, Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) } )

				end

			end

		end

		app.bgColor = Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) }

	end

end



		------------------
-------> Get fg/bg colors <-------
		------------------
function getColors( inCol )

	dataRGB = dlgRGB.data


		----------------
-------> RED slider set <-------
		----------------
	if dataMain.rDepth == 8 then

		dataRGB.r8 = inCol.red

	elseif dataMain.rDepth == 7 then

		dataRGB.r7 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 6 then

		dataRGB.r6 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 5 then

		dataRGB.r5 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 4 then

		dataRGB.r4 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 3 then

		dataRGB.r3 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 2 then

		dataRGB.r2 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 1 then

		dataRGB.r1 = math.floor( inCol.red / rStep )

	elseif dataMain.rDepth == 0 then

		dataRGB.r0 = 0

	end



		------------------
-------> GREEN slider set <-------
		------------------
	if dataMain.gDepth == 8 then

		dataRGB.g8 = inCol.green

	elseif dataMain.gDepth == 7 then

		dataRGB.g7 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 6 then

		dataRGB.g6 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 5 then

		dataRGB.g5 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 4 then

		dataRGB.g4 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 3 then

		dataRGB.g3 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 2 then

		dataRGB.g2 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 1 then

		dataRGB.g1 = math.floor( inCol.green / gStep )

	elseif dataMain.gDepth == 0 then

		dataRGB.g0 = 0

	end



		-----------------
-------> BLUE slider set <-------
		-----------------
	if dataMain.bDepth == 8 then

		dataRGB.b8 = inCol.blue

	elseif dataMain.bDepth == 7 then

		dataRGB.b7 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 6 then

		dataRGB.b6 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 5 then

		dataRGB.b5 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 4 then

		dataRGB.b4 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 3 then

		dataRGB.b3 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 2 then

		dataRGB.b2 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 1 then

		dataRGB.b1 = math.floor( inCol.blue / bStep )

	elseif dataMain.bDepth == 0 then

		dataRGB.b0 = 0

	end



--> Set swatch color <--
	dataRGB.swatch = { Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) } }

	dlgRGB.data = dataRGB

end

		------------------
-------> Set swatch color <-------
		------------------
function swatchUpdate()

		dataRGB = dlgRGB.data

		dataRGB.swatch = { Color{ r = math.ceil( ( dataRGB.r0 + dataRGB.r1 + dataRGB.r2 + dataRGB.r3 + dataRGB.r4 + dataRGB.r5 + dataRGB.r6 + dataRGB.r7 + dataRGB.r8 ) * rStep ), g = math.ceil( ( dataRGB.g0 + dataRGB.g1 + dataRGB.g2 + dataRGB.g3 + dataRGB.g4 + dataRGB.g5 + dataRGB.g6 + dataRGB.g7 + dataRGB.g8 ) * gStep ), b =  math.ceil( ( dataRGB.b0 + dataRGB.b1 + dataRGB.b2 + dataRGB.b3 + dataRGB.b4 + dataRGB.b5 + dataRGB.b6 + dataRGB.b7 + dataRGB.b8 ) * bStep ) } }

		dlgRGB.data = dataRGB

		setColors()

end


		-------------------
-------> Accept user input <-------
		-------------------
function mainOK()

	dataMain = dlgMain.data

	dlgMain:close()

	local newDlg = dlgRGB

	newDlg:show{ wait = false }

	dlgRGB.bounds = Rectangle{ x = dlgMain.bounds.x, y = dlgMain.bounds.y, width = dlgRGB.bounds.width, height = dlgRGB.bounds.height }
	
	setDlgRGB()



--> Set RED math step <--	
	if dataMain.rDepth == 8 then

		rStep = 1

	elseif dataMain.rDepth == 7 then

		rStep = 255 / 127

	elseif dataMain.rDepth == 6 then

		rStep = 255 / 63

	elseif dataMain.rDepth == 5 then

		rStep = 255 / 31

	elseif dataMain.rDepth == 4 then

		rStep = 255 / 15

	elseif dataMain.rDepth == 3 then

		rStep = 255 / 7

	elseif dataMain.rDepth == 2 then

		rStep = 255 / 3

	elseif dataMain.rDepth == 1 then

		rStep = 255

	elseif dataMain.rDepth == 0 then

		rStep = 0

	end



--> Ste GREEN math step <--
	if dataMain.gDepth == 8 then

		gStep = 1

	elseif dataMain.gDepth == 7 then

		gStep = 255 / 127

	elseif dataMain.gDepth == 6 then

		gStep = 255 / 63

	elseif dataMain.gDepth == 5 then

		gStep = 255 / 31

	elseif dataMain.gDepth == 4 then

		gStep = 255 / 15

	elseif dataMain.gDepth == 3 then

		gStep = 255 / 7

	elseif dataMain.gDepth == 2 then

		gStep = 255 / 3

	elseif dataMain.gDepth == 1 then

		gStep = 255

	elseif dataMain.gDepth == 0 then

		gStep = 0

	end



--> Set BLUE math step <--
	if dataMain.bDepth == 8 then

		bStep = 1

	elseif dataMain.bDepth == 7 then

		bStep = 255 / 127

	elseif dataMain.bDepth == 6 then

		bStep = 255 / 63

	elseif dataMain.bDepth == 5 then

		bStep = 255 / 31

	elseif dataMain.bDepth == 4 then

		bStep = 255 / 15

	elseif dataMain.bDepth == 3 then

		bStep = 255 / 7

	elseif dataMain.bDepth == 2 then

		bStep = 255 / 3

	elseif dataMain.bDepth == 1 then

		bStep = 255

	elseif dataMain.bDepth == 0 then

		bStep = 0

	end

end



--> Modify RGB dialog <--
function setDlgRGB()

		--------------------------
-------> Modify active RED slider <-------
		--------------------------
	if dataMain.rDepth ~= 8 then

		dlgRGB:modify{

			id = "r8",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 7 then

		dlgRGB:modify{

			id = "r7",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 6 then

		dlgRGB:modify{

			id = "r6",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 5 then

		dlgRGB:modify{

			id = "r5",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 4 then

		dlgRGB:modify{

			id = "r4",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 3 then

		dlgRGB:modify{

			id = "r3",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 2 then

		dlgRGB:modify{

			id = "r2",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 1 then

		dlgRGB:modify{

			id = "r1",

			visible = false,

			enabled = false

		}

	end
	if dataMain.rDepth ~= 0 then

		dlgRGB:modify{

			id = "r0",

			visible = false,

			enabled = false

		}

	end



		----------------------------
-------> Modify active GREEN slider <-------
		----------------------------
	if dataMain.gDepth ~= 8 then

		dlgRGB:modify{

			id = "g8",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 7 then

		dlgRGB:modify{

			id = "g7",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 6 then

		dlgRGB:modify{

			id = "g6",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 5 then

		dlgRGB:modify{

			id = "g5",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 4 then

		dlgRGB:modify{

			id = "g4",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 3 then

		dlgRGB:modify{

			id = "g3",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 2 then

		dlgRGB:modify{

			id = "g2",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 1 then

		dlgRGB:modify{

			id = "g1",

			visible = false,

			enabled = false

		}

	end
	if dataMain.gDepth ~= 0 then

		dlgRGB:modify{

			id = "g0",

			visible = false,

			enabled = false

		}

	end



		---------------------------
-------> Modify active BLUE slider <-------
		---------------------------
	if dataMain.bDepth ~= 8 then

		dlgRGB:modify{

			id = "b8",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 7 then

		dlgRGB:modify{

			id = "b7",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 6 then

		dlgRGB:modify{

			id = "b6",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 5 then

		dlgRGB:modify{

			id = "b5",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 4 then

		dlgRGB:modify{

			id = "b4",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 3 then

		dlgRGB:modify{

			id = "b3",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 2 then

		dlgRGB:modify{

			id = "b2",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 1 then

		dlgRGB:modify{

			id = "b1",

			visible = false,

			enabled = false

		}

	end
	if dataMain.bDepth ~= 0 then

		dlgRGB:modify{

			id = "b0",

			visible = false,

			enabled = false

		}

	end

end



--> Null function for locked buttons <--
function nullFunc()
end



--> Variable printing <--
function txtPut( val )

	print( val )

end