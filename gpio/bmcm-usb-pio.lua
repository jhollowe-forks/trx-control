-- Copyright (c) 2023 Marc Balmer HB9SSB
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to
-- deal in the Software without restriction, including without limitation the
-- rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
-- sell copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-- IN THE SOFTWARE.

-- bmcm USB-PIO driver

-- direct driver commands

local function setOutput(io, value)
end

local function getInput(io)
end

local function getOutput(io)
end

local function getDirection(io)
end

local function setGroupDirection(group, direction)
end

local function getGroupDirection(goup)
end

return {
	name = 'BMCM USB-PIO driver',
	ioNum = 24,

	-- ioGroups are groups of IO pins whose direction can only be set
	-- as a whole group. Set portGroups to nil if the direction of all
	-- IO pins can be individually set.
	-- Note that GPIO pins are 1 based.

	ioGroups = {
		{ from = 1, to = 8 },
		{ from = 9, to = 16 },
		{ from = 17, to = 20 },
		{ from = 21, to = 24 }
	},
	statusUpdatesRequirePolling = true,
	setOutput = setOutput,
	getInput = getInput,
	getOutput = getOutput,
	setDirection = nil,
	getDirection = getDirection,
	setGroupDirection = setGroupDirection,
	getGroupDirection = getGroupDirection
}
