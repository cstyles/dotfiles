# Defined in - @ line 0
function mv --wraps mv --description 'alias mv mv -i'
	command mv -i $argv;
end
