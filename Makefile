ifeq "$(PREFIX)" ""
export PREFIX=$(HOME)
endif

.PHONY: install

install:
	install -D -m 644 bashrc        "$(PREFIX)/.bashrc"
	install -D -m 644 bash/prompt   "$(PREFIX)/.bash/prompt"
	install -D -m 644 inputrc       "$(PREFIX)/.inputrc"
	install -D -m 644 profile       "$(PREFIX)/.profile"
	install -D -m 644 screenrc      "$(PREFIX)/.screenrc" 
	install -D -m 644 bash/ssh_config_completion.bash "$(PREFIX)/.bash/ssh_config_completion.bash"
