# Defined in - @ line 0
function tree --wraps tree --description 'alias tree tree -C'
	command tree -C $argv;
end
