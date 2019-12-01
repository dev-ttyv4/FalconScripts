----------------------------------------------------------------------------
-- Random PitheBend 
--		Randomize pitchbend slightly by each notes
----------------------------------------------------------------------------

RandStdDev = 			Knob("Unstability", 0.15, 0,  1)
PitchBendRange = 	Knob("PichBndRng",     3, 0, 12, true)

-- Table to keep original tune value for each voices
tunes = {}

function onNote(e)
	tunes[e.id] = e.tune
	postEvent(e)
end


function onRelease(e)
	tunes[e.id] = nil
	postEvent(e)
end


-- Normal Distribution
function gaussian (mean, variance)
	local x = math.random()
	return  math.sqrt(-2 * variance * math.log(x)) *math.cos(2 * math.pi * x) + mean
end


function onPitchBend(e)
	-- Randomize each voice tunes
	for id, tune in pairs(tunes) do
		local rand_bend = gaussian(0, RandStdDev.value * RandStdDev.value)
		if e.bend == 0 then
			-- No randomize when return neutral
			changeTune(id, tune)
		else
			changeTune(id, tune + PitchBendRange.value * math.min(1, math.max(-1, e.bend + rand_bend)))
		end
	end
end
