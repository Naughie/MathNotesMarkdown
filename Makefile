COMPILER = pandoc
TEMPLATE = mytemplate
CSSDIR  = ./css
MDDIR   = ./md
HTMLDIR = ./html
TEXDIR  = ./tex
CSS = $(wildcard $(CSSDIR)/*.css)
SOURCES = $(wildcard $(MDDIR)/*/*.md)
HTMLS = $(subst $(MDDIR)/,$(HTMLDIR)/,$(SOURCES:.md=.html))
TEXS = $(subst $(MDDIR)/,$(TEXDIR)/,$(SOURCES:.md=.tex))
MD2HTMLOPTS = -t html5 -f markdown --mathjax -N --toc -c $(CSS) --template=$(TEMPLATE)
MD2TEXOPTS = -t latex -f markdown -N --toc -V papersize=b5 -V documentclass=bxjsarticle -V classoption=pandoc --template=$(TEMPLATE)
MD2HTML = $(COMPILER) $(MD2HTMLOPTS)
MD2TEX = $(COMPILER) $(MD2TEXOPTS)
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

all: clean $(HTMLS) $(TEXS) git

git:
	$(GIT) add -A && $(GIT) commit -m $(COMMITMSG)

$(foreach source,$(SOURCES),$(eval $(call md2html,$(source))))

$(foreach source,$(SOURCES),$(eval $(call md2tex,$(source))))

clean:
	-rm -f $(HTMLS) $(TEXS)
