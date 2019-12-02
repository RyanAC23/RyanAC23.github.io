"------------------------------------------------------------------------------
"-------Vanity-----------------------------------------------------------------
"------------------------------------------------------------------------------
" Things in this section will be purely for aesthetics.

" colorscheme changes the default colorscheme from a list of presets.

"colorscheme industry 

"------------------------------------------------------------------------------
"-------Global-----------------------------------------------------------------
"------------------------------------------------------------------------------
" Settings to apply to all modes of vim workflow

" - hlsearch sets search to highlight hits (so you can find them), and the
"   command below remaps esc+esc to clear highlighting when you're done.

set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

"------------------------------------------------------------------------------
"--------Python----------------------------------------------------------------
"------------------------------------------------------------------------------
" Creates a Phython coding environment the way I want it (I get what I want!)

" - nospell and nosmartindent are present to disable them if coming to Python
"   mode from the Word Processor (or some other) mode.
" - expandtab
" - tabstop=4
" - softtabstop=4
" - shiftwidth=4
" - autoindent enables auto indenting for easy situations, such as after 
"   function definitions or loops. It is NOT smart enough to figure out stuff 
"   like equations spilling over into the next line. Plugins do exist for this.
" - textwidth sets the max number of characters any row, for visual ease.
" - cc is short for set color column. Makes a colored column at 80 characters.
" - ColorColumn colors a column at a specified location. I use this for visual
"   feedback that I'm out of space in my line.
" - nu displays line numbers. 'set number' also works.

func! PythonMode()
  setlocal nospell
  setlocal nosmartindent

  colorscheme industry  
  setlocal expandtab
  setlocal tabstop=4
  setlocal softtabstop=4
  setlocal shiftwidth=4
  setlocal autoindent
  setlocal textwidth=79
  setlocal cc=80
  highlight ColorColumn ctermbg=6
  setlocal nu
endfu

com! PY call PythonMode()

" Call PY function at startup; I reckon I'll usually be wanting it
PY

"------------------------------------------------------------------------------
"--------Word Processor Mode---------------------------------------------------
"------------------------------------------------------------------------------
" Stolen from the web. Creates a word processor environment with the
" command WP
" - nonu turns off number lines. Probably not wanted for text typing!

func! WordProcessorMode()
    colorscheme morning
    setlocal textwidth=100
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab 

    setlocal nonu
    setlocal colorcolumn=
endfu

com! WP call WordProcessorMode()

"------------------------------------------------------------------------------
"--------C/C++-----------------------------------------------------------------
"------------------------------------------------------------------------------
" Get to it.


"------------------------------------------------------------------------------
"---------Heresy---------------------------------------------------------------
"------------------------------------------------------------------------------

set mouse=a
