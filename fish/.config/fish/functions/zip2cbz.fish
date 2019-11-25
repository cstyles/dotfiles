function zip2cbz --description 'Rename .zip files to .cbz files'
	$HOME/dev/mvr/mvr.py --full '(.*)\.zip' '\1.cbz' $argv
end
