function rgp --wraps rg --description 'alias r rg --pretty'
	rg --pretty $argv | less
end
