ARTICLES := censored/article.satyh\
	gfn/article.satyh\
	irnbru/article.satyh\
	koba/article.satyh\
	MasWag/article.satyh\
	phidnight/article.satyh\
	pohe/article.satyh\
	wasabiz/article.satyh\
	zpt/article.satyh\
	postscript.satyh

main.pdf: book-class.satyh $(ARTICLES) main.saty
	satysfi -b main.saty -C .satysfi -o main.pdf

.PHONY: clean
clean:
	$(RM) main.pdf main.satysfi-aux