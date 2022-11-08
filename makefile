README.md:
	touch README.md

	echo \#\# The Unix Workbench Project - Guessing Game >> README.md
	echo -n "This file was generated on: " >> README.md
	
	date >> README.md
	
	echo -n 'Number of lines in **guessinggame.sh**: ' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " lines" >> README.md

clean:
	rm README.md
