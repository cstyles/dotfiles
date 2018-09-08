# Defined in - @ line 0
function virsh --description 'alias virsh env EDITOR=vim virsh -c qemu:///system'
	env EDITOR=vim virsh -c qemu:///system $argv;
end
