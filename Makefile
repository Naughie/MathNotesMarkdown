COMPILER = pandoc
TEXCOMPILER = latexmk
TEMPLATE = mytemplate
CSSDIR  = ./css
MDDIR   = ./md
HTMLDIR = ./html
TEXDIR  = ./tex
PDFDIR  = ./pdf
CSS = $(wildcard $(CSSDIR)/*.css)
SOURCES = $(wildcard $(MDDIR)/*/*.md)
HTMLS = $(subst $(MDDIR)/,$(HTMLDIR)/,$(SOURCES:.md=.html))
TEXS = $(subst $(MDDIR)/,$(TEXDIR)/,$(SOURCES:.md=.tex))
PDFS = $(subst $(MDDIR)/,$(PDFDIR)/,$(SOURCES:.md=.pdf))
MD2HTMLOPTS = -t html5 -f markdown --mathjax -N --toc -c $(CSS) --template=$(TEMPLATE)
MD2TEXOPTS = -t latex -f markdown-latex_macros -N --toc --template=$(TEMPLATE)
TEX2PDFOPS = -r ~/.latexmkrc
RMTEXTMPOPTS = -c
MD2HTML = $(COMPILER) $(MD2HTMLOPTS)
MD2TEX = $(COMPILER) $(MD2TEXOPTS)
TEX2PDF = $(TEXCOMPILER) $(TEX2PDFOPS)
RMTEXTMP = $(TEXCOMPILER) $(RMTEXTMPOPTS)
GIT = git
COMMITMSG = "Snapshot at `date -R`"

define md2html
$(subst $(MDDIR)/,$(HTMLDIR)/,$(1:.md=.html)): $(1)
	$(MD2HTML) -o $(subst $(MDDIR)/,$(HTMLDIR)/,$(1:.md=.html)) $(1)
endef

define md2tex
$(subst $(MDDIR)/,$(TEXDIR)/,$(1:.md=.tex)): $(1)
	$(MD2TEX) -o $(subst $(MDDIR)/,$(TEXDIR)/,$(1:.md=.tex)) $(1)
endef

define tex2pdf
$(subst $(MDDIR)/,$(PDFDIR)/,$(1:.md=.pdf)): $(1)
	$(TEX2PDF) -outdir=$(subst $(MDDIR)/,$(PDFDIR)/,$(dir $(1))) $(subst $(MDDIR)/,$(TEXDIR)/,$(1:.md=.tex))
	$(RMTEXTMP) -outdir=$(subst $(MDDIR)/,$(PDFDIR)/,$(dir $(1))) $(subst $(MDDIR)/,$(TEXDIR)/,$(1:.md=.tex))
endef

all: clean $(HTMLS) $(TEXS) git

git:
	$(GIT) add -A && $(GIT) commit -m $(COMMITMSG)

pdf: $(PDFS)

$(foreach source,$(SOURCES),$(eval $(call md2html,$(source))))

$(foreach source,$(SOURCES),$(eval $(call md2tex,$(source))))

$(foreach source,$(SOURCES),$(eval $(call tex2pdf,$(source))))

clean:
	-rm -f $(HTMLS) $(TEXS)
