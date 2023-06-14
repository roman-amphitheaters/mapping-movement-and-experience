# For a description of this file, please see:
# https://www.innoq.com/en/blog/markdown-with-zotero-workflow
#------------------------------------------------------------


# what's the name of the markdown source file
SOURCE=amphitheaters-movement-experience
OUTPUT=$(SOURCE)-formatted


CITATIONSTYLE=/Users/sfsheath/Documents/styles/springer-humanities-author-date.csl
# chicago-author-date.csl 
BIBLIO=zotero.bib

TARGET= $(OUTPUT).md

PANDOC=pandoc \
			 --from=markdown \
			 -s --bibliography $(BIBLIO) \
			 --citeproc \
			 --csl=$(CITATIONSTYLE) \
			 --metadata link-citations=true \
			 $(SOURCE).md
			 

# create github flavored markdown
$(OUTPUT).md:
	rm -rf $(OUTPUT).md
	$(PANDOC) --to=gfm --output=$(OUTPUT).md

all: $(TARGET) html pdf

epub:
	pandoc -o $(OUTPUT).epub $(OUTPUT).md

html:
	pandoc --shift-heading-level-by=-1 --embed-resources -s -o $(OUTPUT).html $(OUTPUT).md

pdf:
	pandoc -s --shift-heading-level-by=-1 -o $(OUTPUT).pdf $(OUTPUT).md

clean:
	rm -rf $(OUTPUT).md $(OUTPUT).html $(OUTPUT).pdf



.PHONY: all clean $(TARGET)
.DEFAULT_GOAL := all