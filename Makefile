EMACS ?= emacs
BATCH := $(EMACS) $(EFLAGS) -batch -q -no-site-file -L .

all: zoxide.elc

clean:
	$(RM) *.elc

%.elc: %.el
	$(BATCH) --eval '(byte-compile-file "$<")'
