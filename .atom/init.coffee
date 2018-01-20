# atom: init
# @itsjonq

atom.workspace.observeTextEditors (editor) ->
  editor.getBuffer().onDidSave ->
    editorElement = atom.views.getView(atom.workspace.getActiveTextEditor())
    atom.commands.dispatch(editorElement, 'vim-mode-plus:activate-normal-mode')
