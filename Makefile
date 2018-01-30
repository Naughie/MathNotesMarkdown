COMPILER = pandoc
TEMPLATE = mytemplate
CSSDIR = ./css
CSS = $(wildcard $(CSSDIR)/*.css)
PDFLAGS = -t html5 -f markdown --mathjax
SRCDIR = ./md
SOURCES = $(wildcard $(SRCDIR)/*/*.md)
TARDIR = ./html
TARGETS = $(subst $(SRCDIR)/,$(TARDIR)/,$(SOURCES:.md=.html))
COMMAND = $(COMPILER) $(PDFLAGS) -c $(CSS) --template=$(TEMPLATE)

define pandoc
$(subst $(SRCDIR)/,$(TARDIR)/,$(1:.md=.html)): $(1)
	$(COMMAND) -o $(subst $(SRCDIR)/,$(TARDIR)/,$(1:.md=.html)) $1
endef

all: clean $(TARGETS)

$(foreach source,$(SOURCES),$(eval $(call pandoc,$(source))))

clean:
	-rm -f $(TARGETS)
