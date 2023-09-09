/*
 * Copyright (c) 2023 Marc Balmer HB9SSB
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */

/* Provide the 'rig' Lua module to transceiver drivers */

#include <lua.h>
#include <lauxlib.h>

#include "rigd.h"

static int
luarig_version(lua_State *L)
{
	lua_pushstring(L, RIGD_VERSION);
	return 1;
}

static int
luarig_setspeed(lua_State *L)
{
	return 0;
}

static int
luarig_read(lua_State *L)
{
	return 0;
}

static int luarig_write(lua_State *L)
{
	return 0;
}

int
luaopen_rig(lua_State *L)
{
	struct luaL_Reg luarig[] = {
		{ "version",	luarig_version },
		{ "setspeed",	luarig_setspeed },
		{ "read",	luarig_read },
		{ "write",	luarig_write },
		{ NULL, NULL }
	};

	luaL_newlib(L, luarig);
	lua_pushliteral(L, "_COPYRIGHT");
	lua_pushliteral(L, "Copyright (c) 2023 Marc Balmer HB9SSB");
	lua_settable(L, -3);
	lua_pushliteral(L, "_DESCRIPTION");
	lua_pushliteral(L, "rig-control for Lua");
	lua_settable(L, -3);
	lua_pushliteral(L, "_VERSION");
	lua_pushliteral(L, "rig 1.0.0");
	lua_settable(L, -3);
	
	return 1;
}