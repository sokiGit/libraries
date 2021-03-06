local module = {}

-- please note that this function does not check spelling! It is common that you type "Insatnce" instead of "Instance" and get error even thought the argument was actually an Instance. Please chech your spelling before editing your own script.
function module.argCheck(arg, argType, argIndex, errorCallback)
	if typeof(argType) ~= "string" then return error("Argument check error! Incorrect argument #2. Expected string, got "..typeof(argType)) end
	if typeof(argIndex) ~= "number" then return error("Argument check error! Incorrect argument #3. Expected number, got "..typeof(argType)) end
	if not argIndex or argIndex == nil then
		argIndex = ""
	else
		argIndex = " #"..argIndex
	end
	if not errorCallback or errorCallback == nil then
		if typeof(arg) ~= argType then
			return error("Incorrect argument"..argIndex..". Expected "..argType..", got "..typeof(arg))
		else
			return
		end
	elseif typeof(errorCallback) == "function" then
		return errorCallback()
	else
		return error("Argument check error! Incorrect argument #4. errorCallback can be only function or nil.")
	end		
end
return module
