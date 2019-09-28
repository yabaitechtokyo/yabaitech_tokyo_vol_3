ARTICLES := censored/article.satyh\
	gfn/article.satyh\
	irnbru/article.satyh\
	koba/article.satyh\
	MasWag/article.satyh\
	MasWag/nlstar.satyh\
	MasWag/id.satyh\
	MasWag/lstar.satyh\
	phidnight/article.satyh\
	pohe/article.satyh\
	wasabiz/article.satyh\
	zpt/article.satyh\
	postscript.satyh

main.pdf: QR_DL.pdf book-class.satyh $(ARTICLES) main.saty
	docker-compose run pdf

QR_DL.pdf: QR_DL.png
	docker-compose run qr_dl

.PHONY: clean
clean:
	$(RM) main.pdf main.satysfi-aux QR_DL.pdf
