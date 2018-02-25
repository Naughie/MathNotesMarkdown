COMPILER = pandoc
TEMPLATE = mytemplate
CSSDIR = ./css
CSS = $(wildcard $(CSSDIR)/*.css)
MDTOHTMLFLAGS = -t html5 -f markdown --mathjax -N --toc
SRCDIR = ./md
SOURCES = $(wildcard $(SRCDIR)/*/*.md)
TARDIR = ./html
TARGETS = $(subst $(SRCDIR)/,$(TARDIR)/,$(SOURCES:.md=.html))
COMPILE = $(COMPILER) $(MDTOHTMLFLAGS) -c $(CSS) --template=$(TEMPLATE)
GIT = git
MESSAGE = "Snapshot"

define pandoc
$(subst $(SRCDIR)/,$(TARDIR)/,$(1:.md=.html)): $(1)
	$(COMPILE) -o $(subst $(SRCDIR)/,$(TARDIR)/,$(1:.md=.html)) $1
endef

all: clean $(TARGETS) git

git:
	$(GIT) add -A && $(GIT) commit -m $(MESSAGE)

$(foreach source,$(SOURCES),$(eval $(call pandoc,$(source))))

clean:
	-rm -f $(TARGETS)
