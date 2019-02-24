# Defined in - @ line 0
function r --wraps rsync --description 'alias r rsync'
	rsync -avh --progress --append $argv;
end
