# Defined in - @ line 0
function r --wraps rsync --description 'alias r rsync -avh --progress --partial'
	rsync -avh --progress --partial $argv;
end
