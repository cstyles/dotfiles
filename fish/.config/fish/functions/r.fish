# Defined in - @ line 0
function r --description 'alias r rsync'
	rsync -avh --progress --append $argv;
end
