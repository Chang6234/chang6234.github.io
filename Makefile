JEMDOC := python3 -W ignore::SyntaxWarning jemdoc.py
PAGES := index.html publications.html

.PHONY: all clean

all: $(PAGES)

index.html: index.jemdoc MENU mysite.conf jemdoc.css
	$(JEMDOC) -c mysite.conf index.jemdoc

publications.html: publications.jemdoc MENU mysite.conf jemdoc.css
	$(JEMDOC) -c mysite.conf publications.jemdoc

clean:
	rm -f $(PAGES)
