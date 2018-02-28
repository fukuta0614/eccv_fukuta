 .PHONY: watch build clean precompile

default:
	$(MAKE) watch

watch:
	latexmk -pvc eccv2018submission

build:
	latexmk syuron

clean:
	rm -f eccv2018submission.md
	rm -f TODO
	rm -f *.{toc,log,dvi,aux,bbl,blg,toc,flc,bak,bmc,fdb_latexmk,fls,synctex.gz}
	
fix:
	# pandoc -s syuron.tex -o syuron.md
	# yarn run lint ./syuron.md
	./tool/todo.sh
	find . -type f -name '*.tex' | xargs sed -i '' -e 's/、/，/g' -e 's/。/．/g'
