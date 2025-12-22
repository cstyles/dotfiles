# Defined in - @ line 0
function r --wraps rsync --description 'alias r rsync -avh --progress --partial'
	rsync -avhP $argv;
end
