GF_Util = {};
local getOps
local recursiveSearch

function trim(s)
	if not s then return nil; end
	return(string.gsub(s, "^%s*(.-)%s*$", "%1") or s);
end

getOps = function(source)
	local operatorFound = nil;
	local bracketCount = 0;
	local inQuote = 0;
	local pos = 0;
	
	local currentChar;
	local prevChar = "x";
	while(pos < string.len(source)) do
		currentChar = string.sub(source, pos, pos);
		if (currentChar == "+" or currentChar == "/" ) and bracketCount == 0 and inQuote == 0 then
			operatorFound = 1;
			break;
		elseif currentChar == "(" then
			bracketCount = bracketCount + 1;
		elseif currentChar == ")" then
			bracketCount = bracketCount - 1;
		elseif currentChar == "\"" then
			inQuote = 1 - inQuote;
		else
			if prevChar == " " and bracketCount == 0 and inQuote == 0 then
				operatorFound = 2;
				pos = pos - 1;
				break;
			end
		end
		prevChar = currentChar;
		pos = pos + 1;
	end
	if operatorFound == 2 then	
		return "/", string.sub(source, 1, pos - 1), string.sub(source, pos + 1);
	end
	if operatorFound then	
		return currentChar, string.sub(source, 1, pos - 1), string.sub(source, pos + 1);
	end
end

recursiveSearch = function(source, search) 
	if not source or not search or search == "" then
		return 0;
	end
	local s = trim(search);
	local operator, op1, op2 = getOps(s);
	
	if operator then
		local op1Res = recursiveSearch(source, op1);		
		if not op1Res then
			return 0;
		elseif op1Res > 0 and operator == "/" then
			return 1;
		elseif op1Res == 0 and operator == "+" then
			return 0;
		end
		
		local op2Res = recursiveSearch(source, op2, verbose);
		if not op2Res then
			return 0;
		elseif op2Res > 0 and (op1Res > 0 or operator == "/" ) then
			return 1;
		end
		return 0;
	else
		local literal;			
		if string.sub(s, 1, 1) == "-" then
			return(1 - recursiveSearch(source, trim(string.sub(s, 2))));
		elseif string.sub(s, 1, 1) == "(" and string.sub(s, string.len(s)) == ")" then
			return recursiveSearch(source, trim(string.sub(s, 2, string.len(s) - 1)));
		elseif string.sub(s, 1, 1) == "\"" and string.sub(s, string.len(s)) == "\"" then
			s = trim(string.sub(s, 2, string.len(s) - 1));
			literal = 1;
		elseif string.sub(s, string.len(s)) == "-" then
			s = trim(string.sub(s, 1, string.len(s) - 1));
			literal = 1;
		end
		if literal then
			for word in string.gfind(source, "%w+") do
				if s == word then return 1; end
			end
			return 0;
		else
			if string.find(source, s) then
				return 1;
			else
				for word in string.gfind(s, "%w+") do
					if string.find(source, "%s+"..word.."%s+") then
						return 1;
					elseif string.find(source, "^"..word.."%s+") then
						return 1;
					elseif string.find(source, "%s+"..word.."$") then
						return 1;
					end
				end
				return 0;
			end
		end
	end
end

GF_Util.search = function(s,q)
	local source =  string.lower(string.gsub(s, "|c(%w+)|H(%w+):(.+)|h(.+)|h|r", "%4"));	
	if string.sub(q, string.len(q)) == "/" then
		q = string.sub(q, 1, string.len(q) - 1)
	end

	return recursiveSearch(source, string.lower(q)), source;
end

GF_Util.chatPrintln = function(s)
	DEFAULT_CHAT_FRAME:AddMessage("[GF] "..( s or "nil" ), 0.9, 0.75, 0.20); --, 1, 0.75, 0.0);
end

GF_Util.rateResults = function (msg, fLevel)
	local filterLevel = fLevel or 5;
	
	-- Convert message to lower case and turn all punctuation to whitespace
	msg = " "..msg.." "
	local msgnew = string.lower(string.gsub(msg,"'", ""))
	msgnew = string.gsub(msgnew, "\195\150", "\195\182")
	msgnew = string.gsub(msgnew, "\195\132", "\195\164")
	msgnew = string.gsub(msgnew, "\195\156", "\195\188")
	msgnew = string.gsub(msgnew, "[%p%s´`]", " ")	
	
	local lfx_score = 0
	local goal_score = 0
	local class_score = 0
	local gtype = "N"
	local instancelevel;
	local counter = 0;
	if filterLevel > 1 then
		for _,word in GF_TRIGGER_LIST.IGNORE do
			if string.find(msgnew, word) then return 0, gtype, 0 end
		end
	end
	for _,word in GF_TRIGGER_LIST.LFM do
		if string.find(msgnew, word) then
			lfx_score = 1; 
			break;
		end
	end
	for _,word in GF_TRIGGER_LIST.LFG do
		if string.find(msgnew, word) then
			lfx_score = 1; 
			break;
		end
	end
	for _,instance in GF_TRIGGER_LIST.QUEST do
		for _ , word in instance do
			if string.find(msgnew, word) then
				goal_score = 1;
				gtype = "Q"
				break;
			end
		end
	end
	for _,instance in GF_TRIGGER_LIST.DUNGEON do
		counter = 0
		for _,word in instance do
			if counter == 0 then
				counter = counter + 1;
			else 
				if string.find(msgnew, word) then
					goal_score = 1;
					gtype = "D"
					instancelevel = instance[1];
					break;
				end
			end
		end
	end
	for _,class in GF_TRIGGER_LIST.CLASSES do 
		for _,word in class do
			if counter < 4 then
				counter = counter + 1;
			else
				if string.find(msgnew, word) then
					class_score = 1;
					break;
				end
			end
		end
	end
	for _,word in GF_TRIGGER_LIST.PVP do
		if string.find(msgnew, word) then
			goal_score = 1;
			break;
		end
	end
	for _,word in GF_TRIGGER_LIST.RAID do
		if string.find(msgnew, word) then
			goal_score = 1;
			gtype = "R"
			instancelevel = 60;
			break;
		end
	end
	if filterLevel == 3 and lfx_score + goal_score + class_score >= 1
	or filterLevel == 4 and lfx_score == 1 and goal_score + class_score >= 1
	or filterLevel == 5 and lfx_score == 1 and goal_score + class_score >= 2 then
		return 1, gtype, instancelevel;
	elseif filterLevel == 1 then
		if lfx_score == 1 then
			return 1, gtype, 0;
		else
			return 1, "N", 0;
		end
	else
		return 0, gtype, 0;
	end
end