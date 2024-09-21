-- Copyright (c) 2024 John Hollowell K4JAH
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

-- Yaesu FTDX10 CAT driver

local ftdx10 = require 'cat-delimited'
local config, audio = ...

ftdx10.name = 'Yaesu FTDX10'
ftdx10.ID = '0761'

ftdx10.validModes = {
	['lsb'] = '1',
	['usb'] = '2',
	['cw-u'] = '3',
	['fm'] = '4',
	['am'] = '5',
	['rtty-l'] = '6',
	['cw-l'] = '7',
	['data-l'] = '8',
	['rtty-u'] = '9',
	['data-fm'] = 'A',
	['fm-n'] = 'B',
	['data-u'] = 'C',
	['am-n'] = 'D',
	['psk'] = 'E',
	['data-fm-n'] = 'F'
}

-- Tx frequencies
-- 1.8 MHz - 54 MHz (Amateur bands only)
-- 70 MHz - 70.5 MHz (UK Amateur bands only)

-- Rx frequencies
ftdx10.frequencyRange = {
	min = 30000,
	max = 75000000
}

f710.audio = audio

return ftdx10
