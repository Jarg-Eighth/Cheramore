library General
	globals
		hashtable HT = null
	endglobals

	function B2I takes boolean b returns integer
		if b then
			return 1
		endif
		return 0
	endfunction

	function B2R takes boolean b returns real
		if b then
			return 1.0
		endif
		return 0.0
	endfunction

	function B2S takes boolean b returns string
		if b then
			return "true"
		endif
		return "false"
	endfunction

	function limx takes integer v, integer x returns integer
		if v > x then
			return x
		endif
		return v
	endfunction 

	function limm takes integer v, integer m returns integer
		if v < m then
			return m
		endif
		return v
	endfunction

	function lims takes integer v, integer m, integer x returns integer
		if v < m then
			return m
		elseif v > x then
			return x
		endif
		return v 
	endfunction

endlibrary