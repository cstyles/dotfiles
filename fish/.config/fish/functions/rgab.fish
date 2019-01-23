# Defined in - @ line 0
function rgab --description 'alias rg rgab -A 3 -B 3'
	set distance $argv[1]
	set -e argv[1]
	command rg -A "$distance" -B "$distance" $argv;
end
