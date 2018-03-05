all: languages.md beliefs.md
languages.md: languages.Rmd
beliefs.md: beliefs.Rmd
%.md: %.Rmd _output.yml
	Rscript -e 'rmarkdown::render("$<", output_file = "$@")'
clean:
	rm -rf *.md *_cache/ *_files/
