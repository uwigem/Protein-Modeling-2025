alias gupdate="git stash; git pull; git stash pop"

gpush(){
	git add .
	git commit -m "$1"
	git push
}
