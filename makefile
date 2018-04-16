
README.md: guessinggame.sh
	echo "This proeject is Gessinggame" > README.md
	echo "Todays date:" >> README.md
	date >> README.md
	echo "This journal contains the following number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md
	echo "This is the link for the guessinggame:" >> README.md
	echo "https://github.com/drac8888/gussinggame.git" >> README.md
