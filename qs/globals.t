local util = terralib.require("qs.lib.util")
local S = util.require("lib.std")
local ad = util.require("lib.ad")

-- Globally-available stuff
-- This will form the set of methods/types that get exported
--    as the 'qs' package
local qs = {}


-- Primitive floating point type.
qs.primfloat = double

-- Dual number type that replaces primfloat during automatic differentiation (AD)
qs.dualnum = ad.num

-- The type of real numbers that a program sees
-- Either qs.primfloat or qs.dualnum
-- Defaults to qs.primfloat
qs.real = qs.primfloat

-- Retrieves the value of a number, whether it's primitive or a dual number
qs.val = ad.val


return qs

-- Later, qs will get populated with more stuff from other files


