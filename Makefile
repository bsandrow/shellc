ifeq "$(PREFIX)" ""
export PREFIX=$(HOME)
endif

all = bash \
	  profile \
	  screen \
	  readline

.PHONY: all $(all)

all: $(all)

bash:
	install -d -m 755 "$(PREFIX)/.bash"
	install -D -m 644 bashrc "$(PREFIX)/.bashrc"
	cp bash/* "$(PREFIX)/.bash"
	chmod 644 "$(PREFIX)/.bash/"*

profile:
	install -D -m 644 profile "$(PREFIX)/.profile"

screen:
	install -D -m 644 screenrc "$(PREFIX)/.screenrc"

readline:
	install -D -m 644 inputrc "$(PREFIX)/.inputrc"
