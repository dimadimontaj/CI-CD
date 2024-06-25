DATE = $(shell date -R)

git: 
	git add .
	git commit -m "$(DATE)"
	git push origin develop
	# git push origin nohemife