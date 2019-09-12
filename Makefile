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

main.pdf: QR_DL.pdf book-class.satyh $(ARTICLES) main.saty
	satysfi -b main.saty -C .satysfi -o main.pdf

QR_DL.pdf: QR_DL.png
	convert QR_DL.png QR_DL.pdf

.PHONY: clean
clean:
	$(RM) main.pdf main.satysfi-aux QR_DL.pdf