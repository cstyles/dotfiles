# Defined in - @ line 0
function r --wraps rsync --description 'alias r rsync -avh --progress --append'
	rsync -avh --progress --append $argv;
end
