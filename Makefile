# vim:set noet:

.PHONY: html
.PHONY: pdf
	
all: html pdf
	
html:
	md2pdf markdown/resume.md -s css/style.css -o html/resume.html
pdf:
	md2pdf markdown/resume.md -s css/style.css -o pdf/resume.pdf
clean:
	rm pdf/*.pdf
	rm html/*.html
watch:
	onChanges make -p 'resume.md'
