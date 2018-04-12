
for file in $HOME/.bash_custom/*.sh; do
	chmod +x $file
	. $file
done
