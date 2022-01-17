"
"	##########################
"	#						 #
"	#	VIMRC				 #
"	#						 #
"	#	Author: Kevin Kwon	 #
"	#						 #
"	##########################

"	================
"	GENERAL SETTINGS
"	================

	set nocompatible 		"	Use vim settings rather than vi settings.
	set autoindent			"	Copy indent from the current line when starting
							"	a new line.
	set ignorecase			"	Search commands are case-insensitive.
	set incsearch			"	While type a search command, show matches 
							"	incrementally instead of waiting for you to 
							"	press enter.
	set mouse=a				"	Enable mouse interaction.
	set number				"	Enable line numbers at the side.
	set ruler				"	Show the cursor position all the time.
	set tabstop=4			"	A tab character indents to the 4th (or 8th,
							"	12th, etc.) column.
	set encoding=utf8		"	Non-ascii characters are encoded with UTF-8 by
							"	default.
	set noexpandtab			"	Pressing the tab key creates a tab character,
							"	not spaces.
	set formatoptions=croq	"	c=autowrap comments, r=continue comment on
							"	<enter>, o=continue comments on <o> or <O>,
							"	q=allow format comment with <gqgq>.
	set splitright			"	Create vertical splits to the right.
	set splitbelow			"	Create horizontal splits below.
	set colorcolumn=80		"	Highlight column 80.

"	======
"	COLORS
"	======

if &t_Co > 2 || has("gui_running")
	try
		colorscheme summerfruit256	"	Might not be on every system.
	catch /^Vim\%((\a\+)\)\=:E185/
		colorscheme slate			"	In case summerfruit is unavailable.
	endtry

	syntax on
endif
