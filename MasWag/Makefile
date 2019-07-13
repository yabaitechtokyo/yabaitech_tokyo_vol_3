#../template.pdf: introduction.satyh timedAutomata.satyh membership.satyh conclusion.satyh bib.satyh local.satyh
#	make -C ..

pdf: standalone_main.pdf

bib.satyh: bib.xml ../dblp2satysfi/dblp2satysfi.xsl Makefile
	xsltproc ../dblp2satysfi/dblp2satysfi.xsl $< | nkf --numchar-input -w | sed '2s/bibliography/maswag-bibliography/' | awk 'BEGIN{print "@import: local"}1' > $@

standalone_main.pdf: standalone_main.saty introduction.satyh automata.satyh id.satyh lstar.satyh nlstar.satyh conclusion.satyh bib.satyh
	satysfi $<

#deploy: ~/Library/Mobile\ Documents/com~apple~CloudDocs/template.pdf

#~/Library/Mobile\ Documents/com~apple~CloudDocs/template.pdf: ../template.pdf
#	cp "$<" "$@"

.PHONY: pdf
