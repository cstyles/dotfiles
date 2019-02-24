# Defined in - @ line 0
function rg --wraps rg --description 'alias rg rg -S'
	command rg -S --color=always $argv;
end
