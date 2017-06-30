" Source
" https://github.com/mxw/vim-jsx/issues/124

syn region xmlTagName
  \ matchgroup=xmlEndTag start=+</+
  \ matchgroup=xmlEndTag end=+>+
