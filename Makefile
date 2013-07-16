all: commandt

commandt:
	cd bundle/command-t/ruby/command-t/;\
		ruby extconf.rb;\
		make clean && make

install:
	@mkdir -p ~/.vim_local
	@mkdir -p ~/.vim_local/backup
	@mkdir -p ~/.vim_local/tmp
	@ln -s ~+/vimrc ~/.vimrc
	@ln -s ~+/. ~/.vim
